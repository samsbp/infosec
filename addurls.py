import json,argparse,subprocess
from termcolor import colored

class Markdown:
    header = "## "
    link ="[{desc}]({url})"

class Constants:
    mdfile = "README.md"

    @staticmethod
    def logger(msg):
        print(colored("[+] "+msg,'green'))

class Git:

    @staticmethod
    def uploadFiles():
        process = subprocess.run(['git','add','.'], check=True, stdout=subprocess.PIPE, universal_newlines=True)
        Constants.logger("gid add .")
        process = subprocess.run(['git','commit','-m','update'], check=True, stdout=subprocess.PIPE, universal_newlines=True)
        Constants.logger(process)
        process = subprocess.run(['git','push'], check=True, stdout=subprocess.PIPE, universal_newlines=True)



class Engine:
    def __init__(self):
        self.args=None
        self.data={}

    def loadJSON(self):
        if(self.args.fjson):
            try:
                Constants.logger("loading json file")
                jsonStream = open(self.args.fjson,'r').read()
                self.data=json.loads(jsonStream)
            except:
                pass

    def parse(self):
        Constants.logger("parsing arguments")
        parser = argparse.ArgumentParser()
        parser.add_argument("-fs", "--fstream", help="file stream [stdin|file]")
        parser.add_argument("-fj", "--fjson", help="json file stream [file]")
        parser.add_argument("-sj", "--sjson", help="save json in -fj", action="store_true")
        self.args = parser.parse_args()


    def getInput(self):
        self.parse()
        self.loadJSON()
        readFlag='r'
        if(self.args.fstream == '0'):
            fstream=0
        else:
            fstream=self.args.fstream

        with open(fstream,readFlag) as inputStream:
            Constants.logger("processing")
            lines = inputStream.readlines()
            for line in lines:
                print(line)
                line = line.replace('\n','')
                url,category,subCategory = line.split(',')
                if(category in self.data.keys()):
                    self.data[category][subCategory].append(url)

                else:
                    self.data[category]={}
                    self.data[category][subCategory]=[]
                    self.data[category][subCategory].append(url)

        if(self.args.sjson):
            self.saveJSON()
            self.convertToMD()
            Git.uploadFiles()

    def saveJSON(self):
        with open(self.args.fjson,'w') as dumpFile:
           dumpFile.write(json.dumps(self.data,indent=2))

    def convertToMD(self):
        for category in self.data.keys():
            mdFile = open(category+'/'+Constants.mdfile,'w')
            for subCategory in self.data[category].keys():
                mdFile.write("\n\n"+Markdown.header+subCategory+"\n\n")
                for url in self.data[category][subCategory]:
                    mdFile.write(Markdown.link.format(desc=url,url=url))

    def printData(self):
        Constants.logger("printing urls format:[category:[subCategory:[urls,urls]]]")
        print(json.dumps(self.data,indent=2))




engine = Engine()
engine.getInput()
engine.printData()



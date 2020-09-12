import json
import os

def main():
    with open("pdfs/info.json") as f:
        pdfs  = json.load(f)
        
        for key, value in pdfs.items():
            print(f'{key} is building')
            
            # change directory
            os.chdir(value["working_directory"])

            # build pdf
            command = f'xelatex {value["input_file"]}'
            os.system(command)

            # copy pdf
            command = f'cp {value["asset_path"]} ../pdfs/{value["asset_name"]}'
            os.system(command)

            # change to parent directory
            os.chdir("..")

if __name__ == "__main__":
    main()

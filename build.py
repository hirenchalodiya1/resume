import json
import os
import sys


def main(runner="build"):
    with open("pdfs/info.json") as f:
        pdfs  = json.load(f)
        
        for key, value in pdfs.items():
            print(f'{key} is building')
            
            # change directory
            os.chdir(value["working_directory"])

            # build pdf
            command = f'xelatex {value["input_file"]}'
            os.system(command)

            # create folder
            folder = "pdf" if runner == "release" else "pdfs"
            if folder != "pdfs":
                os.system(f'mkdir -p ../{folder}')

            # copy pdf            
            command = f'cp -p {value["asset_path"]} ../{folder}/{value["asset_name"]}'
            os.system(command)

            # change to parent directory
            os.chdir("..")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "release":
        main("release")
    else:
        main()

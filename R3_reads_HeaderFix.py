#! /usr/bin/env python3

import argparse

# If argparse is not installed, try an installer code on your command line. Argparse is
# is compatible on Python >= 2.3. See https://pypi.org/project/argparse/
#pip install argparse
#python setup.py install
#easy_install argparse

#create an instance of Argument Parser and add positional argument
parser = argparse.ArgumentParser()
parser.add_argument("-d", help="Path to file of concatenated reads with headers that need to be modified to R2 status.")

args = parser.parse_args()

try:
    with open(args.d, "rt") as in_handel:
        with open("fixed_R3_reads.fq", "wt") as out_handel_2:
            count = 0
        #iterate through each line within the file, if its the fourth line (header) it will edit the header then add it to the empty string
            for line in in_handel:
                if count%4 == 0:

                    ed_line = line.split()
                    ed2_line = ed_line[1].replace("3", "2")
                    new_line = "".join(ed2_line)
                    new_header = ed_line[0]+" "+ new_line

                    out_handel_2.write(new_header)
                    out_handel_2.write("\n")

                    count += 1
            #if the line is not a header it will add that line to the string and increase the count
                else:
                    out_handel_2.write(line)
                    count +=1
except IOError:
    print("IO error occured.")

# gzip the fixed_R3_reads.fq file for storage
gzip fixed_R3_reads.fq

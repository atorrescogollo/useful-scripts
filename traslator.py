#!/usr/bin/python3

import sys

if len(sys.argv)==1:
    print("Letter Traslator Decrypter:")
    print("\tUsage:   ./traslator.py <filename> [<regex>=<replacement>]*")
    print("\tExample: ./traslator.py file.txt a=q B=w C=? d=R E=t .=y")
    sys.exit()

d={}

for i in sys.argv[2:]:
    i=i.split('=')
    if i[0] in d.keys():
        print("[!] '"+str(i[0])+"' repeated!")
        sys.exit(1)
    d[i[0]]=i[1]

f=open(sys.argv[1],'r')
try:
    for line in f:
        for ch in line:
            try:
                print(d[ch],end='')
            except KeyError:
                print(ch,end='')

finally:
    f.close()

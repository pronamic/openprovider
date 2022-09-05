#!/bin/bash

host -v ns1.openprovider.nl > host-ns1.openprovider.nl.txt

host -v ns2.openprovider.be > host-ns2.openprovider.be.txt

host -v ns3.openprovider.eu > host-ns3.openprovider.eu.txt

git add --all

git commit --all -m "`date`"

git push origin main

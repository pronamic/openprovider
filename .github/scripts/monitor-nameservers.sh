#!/bin/bash

host -v ns1.openprovider.nl > host-ns1.openprovider.nl.txt
host -v 52.57.114.204 > host-52.57.114.204.txt

host -v ns2.openprovider.be > host-ns2.openprovider.be.txt
host -v 52.214.115.96 > host-52.214.115.96.txt

host -v ns3.openprovider.eu > host-ns3.openprovider.eu.txt
host -v 52.56.134.244 > host-52.56.134.244.txt

# https://github.com/orgs/community/discussions/26560
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config user.name "github-actions[bot]"

git add --all

git commit --all -m "`date`"

git push origin main

git config --unset user.email
git config --unset user.name

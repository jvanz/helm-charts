#!/bin/bash

tar -xvf /tmp/crds.tar.gz
#ls /tmp
#echo "$PWD"
#ls
#echo "find . -maxdepth 1 -name \"*$1*\" -exec  mv \{\} charts/kubewarden-crds/templates/$1.yaml \;"
#find . -maxdepth 1 -name "*$1*" -exec  mv \{\} charts/kubewarden-crds/templates/$1.yaml \;

find . -maxdepth 1 -name "*policyserver*" -exec  mv \{\} /tmp/helm-charts/charts/kubewarden-crds/templates/policyservers.yaml \;
find . -maxdepth 1 -name "*admissionpolicies*" -exec  mv \{\} /tmp/helm-charts/charts/kubewarden-crds/templates/admissionpolicies.yaml \;
find . -maxdepth 1 -name "*clusteradmissionpolicies*" -exec  mv \{\} /tmp/helm-charts/charts/kubewarden-crds/templates/clusteradmissionpolicies.yaml \;

# updatecli expects something in the stdout when a change happen.
echo "Changed!"

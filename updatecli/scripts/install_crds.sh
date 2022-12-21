#!/bin/bash

tar -xvf crds.tar.gz
find . -maxdepth 1 -name "*policyserver*" -exec  mv \{\} charts/kubewarden-crds/templates/policyserver.yaml \;
find . -maxdepth 1 -name "*admissionpolicies*" -exec  mv \{\} charts/kubewarden-crds/templates/admissionpolicy.yaml \;
find . -maxdepth 1 -name "*clusteradmissionpolicies*" -exec  mv \{\} charts/kubewarden-crds/templates/clusteradmissionpolicies.yaml \;

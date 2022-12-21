#!/bin/bash

tar -xvf crds.tar.gz
find . -maxdepth 1 -name "*policyserver*" -exec  mv \{\} /tmp/helm-charts/charts/kubewarden-crds/templates/policyserver.yaml \;
find . -maxdepth 1 -name "*admissionpolicies*" -exec  mv \{\} /tmp/helm-charts/charts/kubewarden-crds/templates/admissionpolicy.yaml \;
find . -maxdepth 1 -name "*clusteradmissionpolicies*" -exec  mv \{\} /tmp/helm-charts/charts/kubewarden-crds/templates/clusteradmissionpolicies.yaml \;

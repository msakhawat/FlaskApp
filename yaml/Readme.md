Below resources is part of cluster(infrastructure), not application. It is suppose to executed by Cluster Admin. Some of files, like db-credential and git-secret, should not be accesable to everyone.

Create database configmap

`oc apply -f configmap.yaml`


Create database secret

`oc apply -f secret.yaml`

Create git secret

`oc appy -f webapp.buildconfig.webhook-secret`
# Normal deployment 

This pipelines are for the testing of the deployment in single namespace. So when you test and verify the code, then you can deploy in promoting pipelines

## Creating tasks
`sqrd-deploy.yaml` shows the task where you deploy the helm chart into the cluster
- Here you can specifi the value file of the particular deployment
- We can also mention chart version, namespace

## Creating pipelines
`sqrd-deploy-pipeline.yaml` shows the pipeline where the set of tasks combines
- Here we will clone the repository in the first task
- Then wevwill deploy the helm chart in the 2nd task

## creating pipeline run
`sqrd-deploy-run.yaml` shows the pipeline run where the deployment will run with it

## Applying the pipeline 
`deploy.sh` will show you how to apply the pipeline 

you can also just run that script just by the following command
```
./deploy.sh
```

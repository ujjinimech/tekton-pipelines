# Deploy pipelines {CD}

## Permisions to deploy
To deploy into the cluster we need to give permisions to the service accout of tekton, that we created before, in the form of `clusterRoles` and `clusterRoleBindings`.

The `role-binding.yaml` gives you the brief knowledge on what permitions you are giving to the service account 

`crb.sh` shows you how the service account is attached to it. 

## Creating tasks for pipelines
To run a pipeline we need to create tasks. 

`promote-task.yaml` shows you the task for deployment.
- In this task we will deploy the helm chart into the cluster in a particular namespace, refering the differnt environments 
- We can change the values by giving the value file acording to our needs in the parameters 

`test-task.yaml` shows you the task for testing the deployment thats done before 
- In this task we will check weather the pod is running or it have any error while deploying and so on 
- we can give a particular namespace to check the deployment in the parameters

## Creating the pipeline with the tasks 
We need to combine the set of tasks to create the pipelines

`promoting-pipeline.yaml` shows the pipeline through which we will deploy the application
- In this task we will first clone the repository, where the helm chart is present, into a workspace known as output
- Then we will debug wheather the repository is cloned correctly into the workspace by the ls command
- Then we will deploy the helm into the `env-dev` namespace indicating devlopment environment
- Then we will check the deploment with `get all` command in kubernetes
- Now we will promote the deployment into the `QA` environment by specifing the `env-qa` namespace
- Again we will check whether the deployment is done without any error by `get all` command in `env-qa` namespace
- we will repeate the same in production environment with the `env-prod` name space 

## Creating a Run to run a pipeline 
We will create a pipelineRun, so the pipeline will run without creating in the UI manually

`pipeline-run.yaml` shows the pipelinerun 
- In this we will give the reference of the workspace that we want to create
- And the service account that we connected the role-bindings to

## Applying the pipelines

`promote.sh` will shows how to apply the pipeline

```
./promote.sh
```
This command showing above will apply the pipeline directly

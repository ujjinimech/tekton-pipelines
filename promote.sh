kubectl delete -f promote-qa-task.yaml -f promoting-pipeline.yaml -f test-task.yaml -n tekton-pipelines

kubectl delete -f task-run.yaml -n tekton-pipelines

kubectl apply -f promote-qa-task.yaml -f promoting-pipeline.yaml -f test-task.yaml -n tekton-pipelines

kubectl apply -f task-run.yaml -n tekton-pipelines
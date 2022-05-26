kubectl apply -f tekton-task.yaml -f tekton-pipeline.yaml -n tekton-pipelines
sleep 0.5
kubectl delete -f prun.yaml -n tekton-pipelines
sleep 0.5
kubectl apply -f prun.yaml -n tekton-pipelines
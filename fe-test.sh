kubectl delete -f fe-task.yaml  -f fe-pipeline.yaml -n tekton-pipelines
sleep 0.5
kubectl apply -f fe-task.yaml  -f fe-pipeline.yaml -n tekton-pipelines
sleep 0.5
kubectl delete -f fe-run.yaml -n tekton-pipelines
sleep 0.5
kubectl apply -f fe-run.yaml -n tekton-pipelines

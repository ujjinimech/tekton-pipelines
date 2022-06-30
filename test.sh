kubectl delete -f be-task.yaml -f be-pipeline.yaml -n tekton-pipelines
sleep 0.5
kubectl apply -f fe-task.yaml -f be-pipeline.yaml -n tekton-pipelines
sleep 0.5
kubectl delete -f be-run.yaml -n tekton-pipelines
sleep 0.5
kubectl create -f be-run.yaml -n tekton-pipelines

kubectl delete -f  trigger-file-be.yml -n tekton-pipelines
sleep 0.5
kubectl apply -f trigger-file-be.yml -n tekton-pipelines

 kubectl delete -f sqrd-deploy.yaml -f sqrd-deploy-pipeline.yaml -n tekton-pipelines
 kubectl delete -f sqrd-deploy-run.yaml -n tekton-pipelines
 sleep 0.05
 kubectl apply -f sqrd-deploy.yaml -f sqrd-deploy-pipeline.yaml -n tekton-pipelines
 kubectl apply -f sqrd-deploy-run.yaml -n tekton-pipelines

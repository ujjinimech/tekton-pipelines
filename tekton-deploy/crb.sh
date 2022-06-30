
echo "(##############################################################)"

kubectl apply -f role-binding.yaml

echo "(##############################################################)"

kubectl create clusterrolebinding cluster-reader-pod   --clusterrole=cluster-reader    --serviceaccount=tekton-pipelines:build-robot
kubectl create clusterrolebinding apps-reader-pod   --clusterrole=apps-reader    --serviceaccount=tekton-pipelines:build-robot
kubectl create clusterrolebinding autoscaling-reader-pod   --clusterrole=autoscaling-reader    --serviceaccount=tekton-pipelines:build-robot  
kubectl create clusterrolebinding network-reader-pod   --clusterrole=network-reader    --serviceaccount=tekton-pipelines:build-robot

echo "(#########################complated#####################################)"

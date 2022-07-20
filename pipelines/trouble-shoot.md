# Trouble shooting

### 1. when the deployment failed saying something else is in process 
Ans: 
1. Check the list of helm charts 1st 
2. Check the secrets in the namespace, by following command
```
kubectl get secrets -n env-dev
```
```
kubectl get secrets -n env-qa
```
```
kubectl get secrets -n env-prod
```

3. If there are any helm secrets, delete them by the following command
```
kubectl delete --all secrets -n env-dev
```
```
kubectl delete --all secrets -n env-qa
```
```
kubectl delete --all secrets -n env-prod
```
### 2. When the deployment didnot seems to recreate pods 
Ans:
1. Check whether there is any change in the images or not
2. If there is change and it didnt reflect in the pods then delete the helm chart or all the pods in the cluster as follwing
```
helm list -A
```
```
helm uninstall sqyards -n env-prod
```
```
helm uninstall sqyards -n env-qa
```
```
helm uninstall sqyards -n env-dev
```
``` or ```
```
kubectl delete --all all -n env-qa
```
```
kubectl delete --all all -n env-dev
```
```
kubectl delete --all all -n env-prod
```
3. Then reapply the deployment 

#kubectl delete secret/drupal-storage --namespace $1
export STORAGE_KEY=$(az storage account keys list --resource-group tbs-nfs-rg --account-name tbsnfs --query "[0].value" -o tsv)
echo StorageKey:$STORAGE_KEY
kubectl create secret generic covid19-storage --from-literal=azurestorageaccountname=tbsnfs --from-literal=azurestorageaccountkey=$STORAGE_KEY --namespace covid19inv

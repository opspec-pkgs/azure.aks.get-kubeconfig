#!/usr/bin/env sh

### begin login
loginCmd='az login -u "$loginId" -p "$loginSecret"'

# handle opts
if [ "$loginTenantId" != " " ]; then
    loginCmd=$(printf "%s --tenant %s" "$loginCmd" "$loginTenantId")
fi

case "$loginType" in
    "user")
        echo "logging in as user"
        ;;
    "sp")
        echo "logging in as service principal"
        loginCmd=$(printf "%s --service-principal" "$loginCmd")
        ;;
esac
eval "$loginCmd" >/dev/null

echo "setting default subscription"
az account set --subscription "$subscriptionId"
### end login

### begin create/update
echo "checking for kubernetes cluster"
if [ "$(az aks list --resource-group "$resourceGroup")" == "[]" ]
then
  echo "No kubernetes cluster found"
else
  aksGetCredsCmd='az aks get-credentials'
  aksGetCredsCmd=$(printf "%s --name %s" "$aksGetCredsCmd" "$name")
  aksGetCredsCmd=$(printf "%s --resource-group %s" "$aksGetCredsCmd" "$resourceGroup")
  aksGetCredsCmd=$(printf "%s --file /kubeConfig" "$aksGetCredsCmd")

  echo "Getting credentials"
  eval "$aksGetCredsCmd"
fi

### end create/update

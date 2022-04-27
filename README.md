## Usage

[Helm](https://helm.sh) must be installed to use the charts [Note- Install version 3.6.3].  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started. 

Once Helm has been set up correctly, add the repo as follows:
```
helm repo add spiffecharts https://jollyaakash.github.io/SpiffeChart
```

Now re-fresh your Helm repo cache to get the latest charts. 
```
helm repo update
```

To install a Helm release named 'spiffe' from the repo chart with a version (Note using version here 0.3.6) in k8s namespace 'spiffe' do the following-
```
helm install spiffe spiffecharts/spiffe-identity --version 0.3.6 --namespace spiffe
```

To see more versions available check - https://github.com/jollyaakash/SpiffeChart/releases

Now you can see the status of spiffe and mqtt single node broker pods using - 
```
kubectl get pods -n spiffe
```

When you are doing playing around with the chart. To uninstall - 
```
helm uninstall spiffe
```

As usual there are multiple values that you can override in the Helm chart, all the possible values are present here - 
https://github.com/jollyaakash/SpiffeChart/blob/main/charts/iotedge-spiffe/values.yaml using -f values.yaml during installation.

You can simply override using -set or --set-string key too.
```
helm install spiffe spiffecharts/spiffe-identity --version 0.3.6 --namespace spiffe --set spiffe.server.jwt.ttl=100 
```

# SpiffeChart

To use this chart do 

helm repo add spiffecharts https://jollyaakash.github.i/SpiffeChart/
helm repo update

To install -

helm install release_name spiffecharts/spiffe-identity --version version_number [0.1.0 or other]

To uninstall - 

helm uninstall release_name

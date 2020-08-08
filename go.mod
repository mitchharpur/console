module github.com/openshift/console

go 1.14

require (
	github.com/coreos/dex v2.3.0+incompatible
	github.com/coreos/go-oidc v2.1.0+incompatible
	github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f
	github.com/go-delve/delve v1.5.0 // indirect
	github.com/google/gops v0.3.10 // indirect
	github.com/gorilla/websocket v1.4.0
	github.com/graph-gophers/graphql-go v0.0.0-20200309224638-dae41bde9ef9
	github.com/mattn/go-colorable v0.1.7 // indirect
	github.com/mattn/go-runewidth v0.0.9 // indirect
	github.com/peterh/liner v1.2.0 // indirect
	github.com/pquerna/cachecontrol v0.0.0-20180517163645-1555304b9b35 // indirect
	github.com/rawagner/graphql-transport-ws v0.0.0-20200506141829-b08019af7525
	go.starlark.net v0.0.0-20200804153121-4379bb3f9ac0 // indirect
	golang.org/x/arch v0.0.0-20200511175325-f7c78586839d // indirect
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45
	golang.org/x/sys v0.0.0-20200805065543-0cf7623e9dbd // indirect
	golang.org/x/text v0.3.3 // indirect
	google.golang.org/grpc v1.27.0
	gopkg.in/square/go-jose.v2 v2.4.1 // indirect
	gopkg.in/yaml.v2 v2.3.0
	helm.sh/helm/v3 v3.2.1
	k8s.io/api v0.18.0
	k8s.io/apiextensions-apiserver v0.18.0
	k8s.io/apimachinery v0.18.0
	k8s.io/cli-runtime v0.18.0
	k8s.io/client-go v0.18.0
	k8s.io/klog v1.0.0
	rsc.io/letsencrypt v0.0.3 // indirect
	sigs.k8s.io/yaml v1.2.0
)

replace (
	github.com/Azure/go-autorest/autorest => github.com/Azure/go-autorest/autorest v0.9.0
	github.com/docker/docker => github.com/moby/moby v0.7.3-0.20190826074503-38ab9da00309
)

module github.com/juntao3000/app-service-operator

go 1.13

require (
	github.com/operator-framework/operator-sdk v0.17.1
	github.com/spf13/pflag v1.0.5
	istio.io/api v0.0.0-20200518203817-6d29a38039bd
	istio.io/client-go v0.0.0-20200521172153-8555211db875
	k8s.io/api v0.18.1
	k8s.io/apimachinery v0.18.1
	k8s.io/client-go v12.0.0+incompatible
	sigs.k8s.io/controller-runtime v0.5.2
)

replace (
	github.com/Azure/go-autorest => github.com/Azure/go-autorest v13.3.2+incompatible // Required by OLM
	k8s.io/api => k8s.io/api v0.17.4 //
	k8s.io/apimachinery => k8s.io/apimachinery v0.17.4 //

	k8s.io/client-go => k8s.io/client-go v0.17.4 // Required by prometheus-operator
)

module github.com/kyma-incubator/api-gateway

go 1.12

require (
	github.com/go-logr/logr v0.1.0
	github.com/gogo/protobuf v1.1.1
	github.com/istio/api v0.0.0-20190517041403-820986f2947c
	github.com/onsi/ginkgo v1.6.0
	github.com/onsi/gomega v1.4.2
	k8s.io/apimachinery v0.0.0-20190404173353-6a84e37a896d
	k8s.io/client-go v11.0.1-0.20190409021438-1a26190bd76a+incompatible
	k8s.io/code-generator v0.0.0-20190612205613-18da4a14b22b
	sigs.k8s.io/controller-runtime v0.2.0-beta.4
)

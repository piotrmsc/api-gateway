package v1alpha3

import (
	"github.com/istio/api/networking/v1alpha3"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
)

// NOTE: json tags are required.  Any new fields you add must have json tags for the fields to be serialized.

// +kubebuilder:object:root=true

// VirtualServiceSpec is the Schema for the addonsconfigurations API
// Important: Run "make generates" to regenerate files after modifying this struct
//
// +genclient
// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
type VirtualService struct {
	metav1.TypeMeta   `json:",inline"`
	metav1.ObjectMeta `json:"metadata,omitempty"`

	Spec   VirtualServiceSpec `json:"spec,omitempty"`
	//Status AddonsConfigurationStatus `json:"status,omitempty"`
}

type VirtualServiceSpec struct {
	v1alpha3.VirtualService
}

// VirtualServiceList contains a list of VirtualServiceSpec
// Important: Run "make generates" to regenerate files after modifying this struct
//
// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
type VirtualServiceList struct {
	metav1.TypeMeta `json:",inline"`
	metav1.ListMeta `json:"metadata,omitempty"`
	Items           []VirtualService `json:"items"`
}

func init() {
	SchemeBuilder.Register(
		&VirtualService{}, &VirtualServiceList{},
	)
}


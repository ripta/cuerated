// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go k8s.io/apimachinery/pkg/runtime/testing

package testing

import "k8s.io/apimachinery/pkg/runtime"

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#EmbeddedTest: {
	TypeMeta:    runtime.#TypeMeta
	ID:          string
	Object:      runtime.#Object
	EmptyObject: runtime.#Object
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#EmbeddedTestExternal: {
	runtime.#TypeMeta
	id?:          string                @go(ID)
	object?:      runtime.#RawExtension @go(Object)
	emptyObject?: runtime.#RawExtension @go(EmptyObject)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#ObjectTest: {
	TypeMeta: runtime.#TypeMeta
	ID:       string
	Items: [...runtime.#Object] @go(,[]runtime.Object)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#ObjectTestExternal: {
	runtime.#TypeMeta
	id?: string @go(ID)
	items?: [...runtime.#RawExtension] @go(Items,[]runtime.RawExtension)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#InternalSimple: {
	runtime.#TypeMeta
	testString: string @go(TestString)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#ExternalSimple: {
	runtime.#TypeMeta
	testString: string @go(TestString)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#ExtensionA: {
	runtime.#TypeMeta
	testString: string @go(TestString)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#ExtensionB: {
	runtime.#TypeMeta
	testString: string @go(TestString)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#ExternalExtensionType: {
	runtime.#TypeMeta
	extension: runtime.#RawExtension @go(Extension)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#InternalExtensionType: {
	runtime.#TypeMeta
	extension: runtime.#Object @go(Extension)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#ExternalOptionalExtensionType: {
	runtime.#TypeMeta
	extension?: runtime.#RawExtension @go(Extension)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#InternalOptionalExtensionType: {
	runtime.#TypeMeta
	extension?: runtime.#Object @go(Extension)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#InternalComplex: {
	TypeMeta:  runtime.#TypeMeta
	String:    string
	Integer:   int
	Integer64: int64
	Int64:     int64
	Bool:      bool
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#ExternalComplex: {
	runtime.#TypeMeta
	"string":   string @go(String)
	"int":      int    @go(Integer)
	Integer64?: int64
	Int64:      int64
	"bool":     bool @go(Bool)
}

// Test a weird version/kind embedding format.
// +k8s:deepcopy-gen=false
#MyWeirdCustomEmbeddedVersionKindField: {
	ID?:           string
	myVersionKey?: string @go(APIVersion)
	myKindKey?:    string @go(ObjectKind)
	Z?:            string
	Y?:            uint64
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#TestType1: {
	#MyWeirdCustomEmbeddedVersionKindField
	A?: string
	B?: int
	C?: int8
	D?: int16
	E?: int32
	F?: int64
	G?: uint
	H?: uint8
	I?: uint16
	J?: uint32
	K?: uint64
	L?: bool
	M?: {[string]: int} @go(,map[string]int)
	N?: {[string]: #TestType2} @go(,map[string]TestType2)
	O?: null | #TestType2 @go(,*TestType2)
	Q?: [...#TestType2] @go(P,[]TestType2)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#TestType2: {
	A?: string
	B?: int
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#ExternalTestType2: {
	A?: string
	B?: int
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#ExternalTestType1: {
	#MyWeirdCustomEmbeddedVersionKindField
	A?: string
	B?: int
	C?: int8
	D?: int16
	E?: int32
	F?: int64
	G?: uint
	H?: uint8
	I?: uint16
	J?: uint32
	K?: uint64
	L?: bool
	M?: {[string]: int} @go(,map[string]int)
	N?: {[string]: #ExternalTestType2} @go(,map[string]ExternalTestType2)
	O?: null | #ExternalTestType2 @go(,*ExternalTestType2)
	Q?: [...#ExternalTestType2] @go(P,[]ExternalTestType2)
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#ExternalInternalSame: {
	#MyWeirdCustomEmbeddedVersionKindField
	A?: #TestType2
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#UnversionedType: {
	#MyWeirdCustomEmbeddedVersionKindField
	A?: string
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
#UnknownType: {
	#MyWeirdCustomEmbeddedVersionKindField
	A?: string
}

// +k8s:deepcopy-gen=false
#Unstructured: _

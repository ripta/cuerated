// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go k8s.io/apimachinery/pkg/runtime/serializer/protobuf

package protobuf

import "k8s.io/apimachinery/pkg/runtime"

_#serializerIdentifier: runtime.#Identifier & "protobuf"

// bufferedMarshaller describes a more efficient marshalling interface that can avoid allocating multiple
// byte buffers by pre-calculating the size of the final buffer needed.
_#bufferedMarshaller: _

// Like bufferedMarshaller, but is able to marshal backwards, which is more efficient since it doesn't call Size() as frequently.
_#bufferedReverseMarshaller: _

_#rawSerializerIdentifier: runtime.#Identifier & "raw-protobuf"

// Provides length delimited frame reader and writer methods
_#lengthDelimitedFramer: {
}

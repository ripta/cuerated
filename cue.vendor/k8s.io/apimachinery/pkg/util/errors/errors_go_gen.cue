// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go k8s.io/apimachinery/pkg/util/errors

package errors

// MessageCountMap contains occurrence for each error message.
#MessageCountMap: {[string]: int}

// Aggregate represents an object that contains multiple errors, but does not
// necessarily have singular semantic meaning.
// The aggregate can be used with `errors.Is()` to check for the occurrence of
// a specific error type.
// Errors.As() is not supported, because the caller presumably cares about a
// specific error of potentially multiple that match the given type.
#Aggregate: _

// This helper implements the error and Errors interfaces.  Keeping it private
// prevents people from making an aggregate of 0 errors, which is not
// an error, but does satisfy the error interface.
_#aggregate: [...]

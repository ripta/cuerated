// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go k8s.io/apimachinery/pkg/util/sets

package sets

// String is a set of strings, implemented via map[string]struct{} for minimal memory consumption.
//
// Deprecated: use generic Set instead.
// new ways:
// s1 := Set[string]{}
// s2 := New[string]()
#String: {[string]: #Empty}

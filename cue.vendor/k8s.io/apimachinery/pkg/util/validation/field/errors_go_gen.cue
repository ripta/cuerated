// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go k8s.io/apimachinery/pkg/util/validation/field

package field

// Error is an implementation of the 'error' interface, which represents a
// field-level validation error.
#Error: {
	Type:     #ErrorType
	Field:    string
	BadValue: _ @go(,interface{})
	Detail:   string
}

#OmitValueType: {
}

// ErrorType is a machine readable value providing more detail about why
// a field is invalid.  These values are expected to match 1-1 with
// CauseType in api/types.go.
#ErrorType: string // #enumErrorType

#enumErrorType:
	#ErrorTypeNotFound |
	#ErrorTypeRequired |
	#ErrorTypeDuplicate |
	#ErrorTypeInvalid |
	#ErrorTypeNotSupported |
	#ErrorTypeForbidden |
	#ErrorTypeTooLong |
	#ErrorTypeTooMany |
	#ErrorTypeInternal |
	#ErrorTypeTypeInvalid

// ErrorTypeNotFound is used to report failure to find a requested value
// (e.g. looking up an ID).  See NotFound().
#ErrorTypeNotFound: #ErrorType & "FieldValueNotFound"

// ErrorTypeRequired is used to report required values that are not
// provided (e.g. empty strings, null values, or empty arrays).  See
// Required().
#ErrorTypeRequired: #ErrorType & "FieldValueRequired"

// ErrorTypeDuplicate is used to report collisions of values that must be
// unique (e.g. unique IDs).  See Duplicate().
#ErrorTypeDuplicate: #ErrorType & "FieldValueDuplicate"

// ErrorTypeInvalid is used to report malformed values (e.g. failed regex
// match, too long, out of bounds).  See Invalid().
#ErrorTypeInvalid: #ErrorType & "FieldValueInvalid"

// ErrorTypeNotSupported is used to report unknown values for enumerated
// fields (e.g. a list of valid values).  See NotSupported().
#ErrorTypeNotSupported: #ErrorType & "FieldValueNotSupported"

// ErrorTypeForbidden is used to report valid (as per formatting rules)
// values which would be accepted under some conditions, but which are not
// permitted by the current conditions (such as security policy).  See
// Forbidden().
#ErrorTypeForbidden: #ErrorType & "FieldValueForbidden"

// ErrorTypeTooLong is used to report that the given value is too long.
// This is similar to ErrorTypeInvalid, but the error will not include the
// too-long value.  See TooLong().
#ErrorTypeTooLong: #ErrorType & "FieldValueTooLong"

// ErrorTypeTooMany is used to report "too many". This is used to
// report that a given list has too many items. This is similar to FieldValueTooLong,
// but the error indicates quantity instead of length.
#ErrorTypeTooMany: #ErrorType & "FieldValueTooMany"

// ErrorTypeInternal is used to report other errors that are not related
// to user input.  See InternalError().
#ErrorTypeInternal: #ErrorType & "InternalError"

// ErrorTypeTypeInvalid is for the value did not match the schema type for that field
#ErrorTypeTypeInvalid: #ErrorType & "FieldValueTypeInvalid"

// ErrorList holds a set of Errors.  It is plausible that we might one day have
// non-field errors in this same umbrella package, but for now we don't, so
// we can keep it simple and leave ErrorList here.
#ErrorList: [...null | #Error]
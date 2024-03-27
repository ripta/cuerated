// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go k8s.io/apimachinery/pkg/util/validation

package validation

_#qnameCharFmt: "[A-Za-z0-9]"

_#qnameExtCharFmt: "[-A-Za-z0-9_.]"

_#qualifiedNameFmt: "([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9]"

_#qualifiedNameErrMsg: "must consist of alphanumeric characters, '-', '_' or '.', and must start and end with an alphanumeric character"

_#qualifiedNameMaxLength: int & 63

_#httpPathFmt: "[A-Za-z0-9/\\-._~%!$&'()*+,;=:]+" // `[A-Za-z0-9/\-._~%!$&'()*+,;=:]+`

_#labelValueFmt: "(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?"

_#labelValueErrMsg: "a valid label must be an empty string or consist of alphanumeric characters, '-', '_' or '.', and must start and end with an alphanumeric character"

#LabelValueMaxLength: int & 63

_#dns1123LabelFmt: "[a-z0-9]([-a-z0-9]*[a-z0-9])?"

_#dns1123LabelErrMsg: "a lowercase RFC 1123 label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character"

#DNS1123LabelMaxLength: int & 63

_#dns1123SubdomainFmt: "[a-z0-9]([-a-z0-9]*[a-z0-9])?(\\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*"

_#dns1123SubdomainErrorMsg: "a lowercase RFC 1123 subdomain must consist of lower case alphanumeric characters, '-' or '.', and must start and end with an alphanumeric character"

#DNS1123SubdomainMaxLength: int & 253

_#dns1035LabelFmt: "[a-z]([-a-z0-9]*[a-z0-9])?"

_#dns1035LabelErrMsg: "a DNS-1035 label must consist of lower case alphanumeric characters or '-', start with an alphabetic character, and end with an alphanumeric character"

#DNS1035LabelMaxLength: int & 63

_#wildcardDNS1123SubdomainFmt: "\\*\\.[a-z0-9]([-a-z0-9]*[a-z0-9])?(\\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*"

_#wildcardDNS1123SubdomainErrMsg: "a wildcard DNS-1123 subdomain must start with '*.', followed by a valid DNS subdomain, which must consist of lower case alphanumeric characters, '-' or '.' and end with an alphanumeric character"

_#cIdentifierFmt: "[A-Za-z_][A-Za-z0-9_]*"

_#identifierErrMsg: "a valid C identifier must start with alphabetic character or '_', followed by a string of alphanumeric characters or '_'"

_#minUserID:  0
_#maxUserID:  2147483647
_#minGroupID: 0
_#maxGroupID: 2147483647

_#percentFmt: "[0-9]+%"

_#percentErrMsg: "a valid percent string must be a numeric string followed by an ending '%'"

_#httpHeaderNameFmt: "[-A-Za-z0-9]+"

_#httpHeaderNameErrMsg: "a valid HTTP header must consist of alphanumeric characters or '-'"

_#envVarNameFmt: "[-._a-zA-Z][-._a-zA-Z0-9]*"

_#envVarNameFmtErrMsg: "a valid environment variable name must consist of alphabetic characters, digits, '_', '-', or '.', and must not start with a digit"

_#configMapKeyFmt: "[-._a-zA-Z0-9]+" // `[-._a-zA-Z0-9]+`

_#configMapKeyErrMsg: "a valid config key must consist of alphanumeric characters, '-', '_' or '.'"
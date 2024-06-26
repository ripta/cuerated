// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go k8s.io/apimachinery/pkg/util/httpstream

package httpstream

#HeaderConnection:               "Connection"
#HeaderUpgrade:                  "Upgrade"
#HeaderProtocolVersion:          "X-Stream-Protocol-Version"
#HeaderAcceptedProtocolVersions: "X-Accepted-Stream-Protocol-Versions"

// Dialer knows how to open a streaming connection to a server.
#Dialer: _

// UpgradeRoundTripper is a type of http.RoundTripper that is able to upgrade
// HTTP requests to support multiplexed bidirectional streams. After RoundTrip()
// is invoked, if the upgrade is successful, clients may retrieve the upgraded
// connection by calling UpgradeRoundTripper.Connection().
#UpgradeRoundTripper: _

// ResponseUpgrader knows how to upgrade HTTP requests and responses to
// add streaming support to them.
#ResponseUpgrader: _

// Connection represents an upgraded HTTP connection.
#Connection: _

// Stream represents a bidirectional communications channel that is part of an
// upgraded connection.
#Stream: _

// UpgradeFailureError encapsulates the cause for why the streaming
// upgrade request failed. Implements error interface.
#UpgradeFailureError: {
	Cause: _ @go(,error)
}

package example

import (
	"tool/cli"
)

command: greet: {
	task: {
		askname: cli.Ask & {
			prompt: "Enter your name"
		}
		hello: cli.Print & {
			"$after": askname
			text:     "Hello \(task.askname.response)"
		}
	}
}

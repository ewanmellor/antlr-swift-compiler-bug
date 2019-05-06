#!/bin/sh

SWIFTC="${SWIFTC-swiftc}"

swift build

"$SWIFTC" -c \
    $(find Tests/Antlr4Tests -name '*.swift') \
	-module-name "Antlr4Tests" \
	-I ./.build/*/debug \
        -F /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks

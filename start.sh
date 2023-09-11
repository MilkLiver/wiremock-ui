#!/bin/sh
sed -i 's/^    "dev":.*/    "dev": "vite --port '$PORT' --host '$HOST'",/' package.json
#!/bin/bash

# <bitbar.title>Fintual Numbers</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Juan Ignacio Donoso</bitbar.author>
# <bitbar.author.github>blackjid</bitbar.author.github>
# <bitbar.desc>Show numbers from fintual site</bitbar.desc>
# <bitbar.dependencies>bash<bitbar.dependencies>
# <bitbar.dependencies>curl<bitbar.dependencies>
# <bitbar.dependencies>grep<bitbar.dependencies>
# <bitbar.dependencies>tr<bitbar.dependencies>
# <bitbar.dependencies>awk<bitbar.dependencies>

curl -s https://fintual.cl/numeros | grep -E -A1 'Administramos .*' | tr '\n' ' ' | awk '$1=$1'

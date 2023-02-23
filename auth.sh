#!/bin/bash

{
	cat <<-'EOH'
	This file, contains the data of all individuals that contributed to the repository content.
	EOH
	echo
	git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf
} > AUTHORS

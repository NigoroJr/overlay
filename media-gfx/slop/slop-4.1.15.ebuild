# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="An application that queries for a selection from the user and prints the region to stdout."
HOMEPAGE="https://github.com/naelstrof/slop"

inherit cmake-utils

if [[ ${PV} != 9999 ]]; then
	SRC_URI="https://github.com/naelstrof/slop/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
	S="${WORKDIR}/slop-${PV}"
else
	inherit git-2
	EGIT_REPO_URI="git://github.com/naelstrof/slop.git
		https://github.com/naelstrof/slop.git"
fi


LICENSE="GPLv3"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

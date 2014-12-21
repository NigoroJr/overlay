# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Takes screenshots of your desktop. maim is supposed to be an improved scrot."
HOMEPAGE="https://github.com/naelstrof/maim"

inherit cmake-utils

if [[ ${PV} != 9999 ]]; then
	SRC_URI="https://github.com/naelstrof/maim/archive/v${PV}.tar.gz"
	KEYWORDS="~amd64"
	S="${WORKDIR}/maim-${PV}"
else
	inherit git-2
	EGIT_REPO_URI="git://github.com/naelstrof/maim.git
		https://github.com/naelstrof/maim.git"
fi

LICENSE="GPLv3"
SLOT="0"
IUSE="slop"

DEPEND="media-libs/imlib2 x11-libs/libXrandr x11-libs/libXfixes slop? ( media-gfx/slop )"
RDEPEND="${DEPEND}"

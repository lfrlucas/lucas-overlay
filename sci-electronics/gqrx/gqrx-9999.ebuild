# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

#DEPEND="sci-electronics/gnuradio[fcd?]

EAPI=5

inherit qt4-r2 git-2

DESCRIPTION="Software defined radio receiver powered by GNU Radio and Qt"
HOMEPAGE="http://www.oz9aec.net/index.php/gnu-radio/gqrx-sdr"
EGIT_REPO_URI="https://github.com/csete/gqrx.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="uhd rtl"

DEPEND="sci-electronics/gnuradio:0
	rtl? ( net-wireless/rtl-sdr )
	uhd? ( net-wireless/uhd )
	sci-electronics/gr-osmosdr
	media-sound/pulseaudio"
RDEPEND="${DEPEND}"

src_install() {
	dobin gqrx
}
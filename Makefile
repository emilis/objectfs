
# --- Vars: ------------------------------------------------------------------

PACKAGE_DIR := packages

CORE_PKG := packages/objectfs-core
REPO_PKG := packages/objectfs-packages
FEED_PKG := packages/ofs-feeds

DATE := `date +%F`


# --- Main targets: ----------------------------------------------------------

default: build

build: install_packages


clean: remove_packages


zip: build | create_zip


# --- Subroutines: -----------------------------------------------------------

install_packages: | $(CORE_PKG) $(REPO_PKG) $(FEED_PKG)


# --- Tasks: -----------------------------------------------------------------

remove_packages:
	rm -rf $(PACKAGE_DIR)


create_zip: install_packages
	tar czf ../objectfs-$(DATE).tar.gz --exclude-vcs ../objectfs


$(CORE_PKG): | $(PACKAGE_DIR)
	git clone git://github.com/emilis/objectfs-core.git $(CORE_PKG)


$(REPO_PKG): | $(PACKAGE_DIR)
	git clone git://github.com/emilis/objectfs-packages.git $(REPO_PKG)

$(FEED_PKG): | $(PACKAGE_DIR)
	git clone git://github.com/emilis/ofs-feeds.git $(FEED_PKG)


$(PACKAGE_DIR):
	mkdir $(PACKAGE_DIR)



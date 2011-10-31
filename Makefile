
# --- Vars: ------------------------------------------------------------------

PACKAGE_DIR := packages

CORE_PKG := packages/objectfs-core
REPO_PKG := packages/objectfs-packages


# --- Main targets: ----------------------------------------------------------

build: install_packages


zip: build | create_zip


# --- Subroutines: -----------------------------------------------------------

install_packages: | $(CORE_PKG) $(REPO_PKG)


create_directories: | $(PACKAGE_DIR)


create_zip: build
	tar czf ../objectfs.tar.gz --exclude-vcs ../objectfs


# --- Tasks: -----------------------------------------------------------------

$(CORE_PKG): | create_directories
	cd $(PACKAGE_DIR)
	git clone git://github.com/emilis/objectfs-core.git


$(REPO_PKG): | create_directories
	cd $(PACKAGE_DIR)
	git clone git://github.com/emilis/objectfs-packages.git


$(PACKAGE_DIR):
	mkdir $(PACKAGE_DIR)



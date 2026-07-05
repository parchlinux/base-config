# Maintainer: Parch Linux <dev@parchlinux.com>

pkgname=parch-base-config
pkgver=0.1.0
pkgrel=3
pkgdesc="Base system configuration for Parch Linux"
arch=('any')
url="https://github.com/parchlinux/base-config"
license=('BSD-3-Clause')
groups=('parch-base')
conflicts=("${pkgname}-git")
backup=(
  'etc/gitconfig'
  'etc/inputrc'
  'etc/nanorc'
  'etc/paru.conf'
  'etc/updatedb.conf'
  'etc/vimrc'
  'etc/wgetrc'
  'etc/bat/config'
  'etc/profile.d/10-parch-env.sh'
  'etc/profile.d/20-cli-tools.sh'
  'etc/profile.d/99-wayland.sh'
  'etc/pipewire/pipewire.conf.d/99-low-latency.conf'
)
install=parch-base-config.install

source=("${pkgname}::git+${url}")
sha256sums=('SKIP')

# Files that conflict with upstream packages are installed to /usr/share
# and deployed to /etc via the .install script
_parch_conflict_files=(
  'etc/inputrc'
  'etc/skel/.bashrc'
  'etc/skel/.zshrc'
  'etc/nanorc'
  'etc/vimrc'
  'etc/wgetrc'
  'etc/paru.conf'
)

package() {
  cd "${srcdir}/${pkgname}"

  # Install non-conflicting system configuration files directly to /etc
  find etc -type f -not -path 'etc/skel/*' | while read -r file; do
    local skip=0
    for conflict in "${_parch_conflict_files[@]}"; do
      [[ "${file}" == "${conflict}" ]] && skip=1 && break
    done
    [[ ${skip} -eq 0 ]] && install -Dm644 "${file}" "${pkgdir}/${file}"
  done

  # Install non-conflicting skeleton files for new users
  find etc/skel -type f | while read -r file; do
    local skip=0
    for conflict in "${_parch_conflict_files[@]}"; do
      [[ "${file}" == "${conflict}" ]] && skip=1 && break
    done
    if [[ ${skip} -eq 0 ]]; then
      local dest="${file#etc/skel}"
      install -Dm644 "${file}" "${pkgdir}/etc/skel${dest}"
    fi
  done

  # Install conflicting files to /usr/share for deployment via .install script
  for file in "${_parch_conflict_files[@]}"; do
    install -Dm644 "${file}" "${pkgdir}/usr/share/parch-base-config/${file}"
  done
}

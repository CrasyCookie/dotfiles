;; ==================================================
;; This file contains values for different variables
;; ==================================================

(provide 'values-variables)

;; RSS feeds
(setq elfeed-feeds
      '("https://codeberg.org/forgejo/forgejo/releases.rss"
	"https://rss-bridge.org/bridge01/?action=display&bridge=MinecraftBridge&format=Atom"
	"https://www.debian.org/News/news"
	"https://bits.debian.org/feeds/atom.xml"
	"http://www.debian.org/security/dsa-long"
	"https://www.phoronix.com/phoronix-rss.php"
	"https://planet.kde.org/atom.xml"
	"https://www.omglinux.com/feed"
	"https://9to5linux.com/feed/atom"))

;; == Add directories to exec-path ==

;; Golang executables
(add-to-list 'exec-path "~/PackageManagers/go/bin")

;; Rust executables (cargo)
(add-to-list 'exec-path "~/PackageManagers/cargo/bin")

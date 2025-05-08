// disable automatic updates, disable checks for updates, disable red warning
// about disabled checks
user_pref("app.update.auto", false);
user_pref("app.update.enabled", false);
user_pref("app.updatecheck.override", true);

// same for addons
user_pref("extensions.blocklist.enabled", false);
user_pref("extensions.getAddons.cache.enabled", false);
user_pref("extensions.update.autoUpdateDefault", false);
user_pref("extensions.update.enabled", false);
user_pref("xpinstall.enabled", false);

// no prompts on the first run
user_pref("browser.startup.homepage_override.mstone", "ignore");
user_pref("shell.checkDefaultClient", false);

// generic usability
user_pref("browser.startup.homepage", "about:blank");
user_pref("browser.tabs.warnOnClose", false);
user_pref("browser.urlbar.autoFill", true);
user_pref("browser.urlbar.suggest.bookmark", true);
user_pref("browser.urlbar.suggest.history", false);
user_pref("general.skins.selectedSkin", "modern/1.0");
user_pref("signon.rememberSignons", false);

// i2p-specific
user_pref("browser.fixup.alternate.enabled", false);
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.showSearch", false);
user_pref("keyword.enabled", false);
user_pref("media.autoplay.enabled", false);
user_pref("network.dns.disablePrefetch", true);
user_pref("network.prefetch-next", false);
user_pref("network.proxy.http", "127.0.0.1");
user_pref("network.proxy.http_port", 4444);
user_pref("network.proxy.share_proxy_settings", true);
user_pref("network.proxy.type", 1);

// various (security-related)
user_pref("beacon.enabled", false);
user_pref("browser.formfill.enable", false);
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("devtools.debugger.prompt-connection", false);
user_pref("geo.enabled", false);
user_pref("privacy.donottrackheader.enabled", true);
user_pref("privacy.firstparty.isolate", true);
user_pref("privacy.resistFingerprinting", true);
user_pref("webgl.disabled", true);

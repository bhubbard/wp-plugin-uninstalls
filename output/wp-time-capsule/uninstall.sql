-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptc-premium-extensions', 'spamshield_options', 'spamshield_whitelist_keys', 'itsec-storage', 'aio_wp_security_configs', 'spamshield_ubl_cache', 'auto_update_plugins', 'auto_updater.lock', '_site_transient_update_core', 'wptc-init-errors', 'iwp_client_public_key', 'iwp_client_nossl_key', 'wptc_disable_sentry_lib', 'ftp_credentials', 'wptc_installed', 'is_wptc_activation_redirected', 'dirsize_cache');
DELETE FROM wp_options WHERE option_name LIKE '_site_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login_time');


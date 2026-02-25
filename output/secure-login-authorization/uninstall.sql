-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('itc_slawp_secure_login_authorization', 'itc_slawp_secure_login_authorization_plugin_access', 'itc_slawp_secure_login_authorization_plugin_reset_secret', 'itc_slawp_login_authorization_paused', 'itc_slawp_clear_transient_secure_login_authorization');
DELETE FROM wp_options WHERE option_name LIKE 'itc_slawp_secure_login_authorization%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('itc_slawp_wp_secure_access_expiry');
DELETE FROM wp_usermeta WHERE meta_key IN ('itc_slawp_wp_secure_access_expiry');
DELETE FROM wp_termmeta WHERE meta_key IN ('itc_slawp_wp_secure_access_expiry');
DELETE FROM wp_commentmeta WHERE meta_key IN ('itc_slawp_wp_secure_access_expiry');


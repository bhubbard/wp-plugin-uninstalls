-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_ua_options', 'wau_addon_settings', 'wua_addon_settings', 'woo_ua_my_plugin_notice_shown');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woo_ua_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woo_ua_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woo_ua_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woo_ua_field');


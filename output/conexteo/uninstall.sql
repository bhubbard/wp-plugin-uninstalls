-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conexteo_setting__options', 'example_plugin_options', 'conexteo_synccustomers_setting', 'conexteo_cronkey_setting', 'conexteo_contactlist_setting', 'conexteo_appid_setting', 'conexteo_keyid_setting');


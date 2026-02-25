-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myplugin_options', 'wd_apikey_db_version', 'wp_upe_updated');


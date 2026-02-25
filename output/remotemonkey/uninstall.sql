-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('remotemonkey_options', 'remotemonkey_do_activation_redirect', 'bm_remotemonkey', 'akeebabackupwp_config', 'update_plugins', 'update_themes');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_nfproot_plugins_settings', '_nfp_root_settings', '_nfp_settings');


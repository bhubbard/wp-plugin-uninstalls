-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_nfproot_plugins_settings', '_nfp_root_settings', '_nfp_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nfpmnm_can_login_on_maintenance');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nfpmnm_can_login_on_maintenance');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nfpmnm_can_login_on_maintenance');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nfpmnm_can_login_on_maintenance');


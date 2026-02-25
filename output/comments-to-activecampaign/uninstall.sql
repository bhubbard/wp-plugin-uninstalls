-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctac_api_access', 'ctac_activate_globally', 'ctac_list_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ctac_status', '_ctac_list_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ctac_status', '_ctac_list_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ctac_status', '_ctac_list_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ctac_status', '_ctac_list_id');


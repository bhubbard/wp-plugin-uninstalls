-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_nfprct_rewrite_restricted_media_list', '_nfproot_plugins_settings', '_nfp_root_settings', '_nfp_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rsmd_is_restricted', '_nfprct_is_restricted', '_nfprct_allowed_role', '_rsmd_allowed_role', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rsmd_is_restricted', '_nfprct_is_restricted', '_nfprct_allowed_role', '_rsmd_allowed_role', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rsmd_is_restricted', '_nfprct_is_restricted', '_nfprct_allowed_role', '_rsmd_allowed_role', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rsmd_is_restricted', '_nfprct_is_restricted', '_nfprct_allowed_role', '_rsmd_allowed_role', '_wp_attached_file');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%media_library_mode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%media_library_mode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%media_library_mode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%media_library_mode';


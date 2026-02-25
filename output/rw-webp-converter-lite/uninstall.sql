-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rwwcl_total_converted', 'rwwcl_total_saved_bytes', 'rwwcl_last_converted');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rwwcl_skipped_small', '_rwwcl_converted');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rwwcl_skipped_small', '_rwwcl_converted');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rwwcl_skipped_small', '_rwwcl_converted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rwwcl_skipped_small', '_rwwcl_converted');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpdm_file_browser_root');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('__wpdm_files');
DELETE FROM wp_usermeta WHERE meta_key IN ('__wpdm_files');
DELETE FROM wp_termmeta WHERE meta_key IN ('__wpdm_files');
DELETE FROM wp_commentmeta WHERE meta_key IN ('__wpdm_files');


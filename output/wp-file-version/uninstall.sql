-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfv_setting_allow_direct_access', 'wfv_db_version', 'wfv_setting_file_tpl', 'wfv_setting_file_css', 'wfv_post_types', 'wfv_setting_allowed_ftypes', 'wfv_setting_date_format', 'wfvIcon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wfv_files');
DELETE FROM wp_usermeta WHERE meta_key IN ('wfv_files');
DELETE FROM wp_termmeta WHERE meta_key IN ('wfv_files');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wfv_files');


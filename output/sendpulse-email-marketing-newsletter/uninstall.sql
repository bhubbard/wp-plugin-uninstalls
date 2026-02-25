-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_emp_session_storage_notice_dismissed', 'sp_emp_file_storage_notice_dismissed', 'sp_import_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sp_user_ip', '_sp_form_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sp_user_ip', '_sp_form_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sp_user_ip', '_sp_form_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sp_user_ip', '_sp_form_code');


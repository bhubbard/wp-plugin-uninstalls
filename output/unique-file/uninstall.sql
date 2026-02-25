-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unique_file_version', 'unique_file_rename_md5', 'unique_file_must_one', 'unique_file_without_siteid', 'unique_file_prevent_deletion');


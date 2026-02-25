-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('itsec-storage', 'pdt_tmp_active_plugins_backup_from_case_opening', 'pdt_active_case_id', 'pdt_cases', 'pdt_tmp_active_plugins_backup');
DELETE FROM wp_options WHERE option_name LIKE 'pdt_case_%';


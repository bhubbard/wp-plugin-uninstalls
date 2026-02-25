-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ems_jetpack_crm_installed', 'ems_jetpack_crm_version', 'ems_jetpack_crm_main_url', 'ems_jetpack_crm_main_key', 'ems_jetpack_crm_main_secret', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_main_url';
DELETE FROM wp_options WHERE option_name LIKE '%_main_key';
DELETE FROM wp_options WHERE option_name LIKE '%_main_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_process';
DELETE FROM wp_options WHERE option_name LIKE '%_export_count';
DELETE FROM wp_options WHERE option_name LIKE '%_offset';


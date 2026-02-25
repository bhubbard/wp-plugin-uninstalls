-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rsfirewall_log_emails_count', 'rsfirewall_log_emails_send_after', 'rsfirewall_version', 'rsfirewall_lite_version', 'rsfirewall_backend_password', 'rsfirewall_system_check', 'rsfirewall_active_scanner', 'rsfirewall_core_scanner', 'rsfirewall_lockdown', 'rsfirewall_logging', 'rsfirewall_import', 'rsfirewall_updates', 'rsfirewall_grade', 'rsfirewall_system_check_last_run', 'rsfirewall_admin_users', 'rsfirewall_hardening', 'global_admin_notice', 'update_plugins', 'update_core', 'rsf_bulk_add_ips_form_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rsfirewall_ip', 'rsfirewall_reason', 'rsfirewall_code', 'rsfirewall_debug_variables', 'rsfirewall_type', 'rsfirewall_level');
DELETE FROM wp_usermeta WHERE meta_key IN ('rsfirewall_ip', 'rsfirewall_reason', 'rsfirewall_code', 'rsfirewall_debug_variables', 'rsfirewall_type', 'rsfirewall_level');
DELETE FROM wp_termmeta WHERE meta_key IN ('rsfirewall_ip', 'rsfirewall_reason', 'rsfirewall_code', 'rsfirewall_debug_variables', 'rsfirewall_type', 'rsfirewall_level');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rsfirewall_ip', 'rsfirewall_reason', 'rsfirewall_code', 'rsfirewall_debug_variables', 'rsfirewall_type', 'rsfirewall_level');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rsfirewall_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rsfirewall_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rsfirewall_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rsfirewall_%';


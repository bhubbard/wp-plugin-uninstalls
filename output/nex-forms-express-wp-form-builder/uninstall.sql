-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'nf_fs_activated', 'nf_activated', 'fs_storage_logger', 'fs_active_plugins', 'nex-forms-preferences', 'NFISENVA', 'nex-forms-other-config', '7103891', 'tmp_csv_export', 'nex-forms-email-config', 'nex_forms_mailchimp_api_key', 'nex_forms_get_response_api_key', 'nex-forms-script-config', 'nex-forms-style-config', 'dismiss_nf_notice_wf_02', 'nex-forms-version', 'nf-first-run', 'nf_set_attachments', 'convert_paypal', 'nf_interactions_converted', 'nf_views_converted', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '1983017%';


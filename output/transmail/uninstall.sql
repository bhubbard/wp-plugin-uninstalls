-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('transmail_plugin_version', 'transmail_max_log_limit', 'transmail_additional_mail_agents', 'transmail_test_mail_case', 'transmail_connection_status', 'transmail_content_type', 'transmail_domain_name', 'transmail_mail_agents_count', 'transmail_from_name', 'transmail_from_email_id', 'transmail_send_mail_token', 'zmail_plugin_installed');


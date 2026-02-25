-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nexlifydesk_imap_settings', 'nexlifydesk_aws_processed_emails', 'nexlifydesk_processed_emails', 'nexlifydesk_settings', 'nexlifydesk_agent_positions', 'nexlifydesk_email_templates', 'nexlifydesk_version', 'nexlifydesk_last_ticket_number', 'nexlifydesk_db_version', 'nexlifydesk_password_encryption_migration', 'nexlifydesk_template_notice_dismissed', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'nexlifydesk_google_oauth_state', 'nexlifydesk_sla_tickets', 'nexlifydesk_resolved_tickets', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('customer_email', 'nexlifydesk_agent_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('customer_email', 'nexlifydesk_agent_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('customer_email', 'nexlifydesk_agent_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customer_email', 'nexlifydesk_agent_position');


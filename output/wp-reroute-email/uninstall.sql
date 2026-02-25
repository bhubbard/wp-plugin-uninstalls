-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_reroute_email_enable', 'wp_reroute_append_recipient', 'wp_reroute_email_address', 'wp_reroute_email_message_to_append', 'wp_reroute_email_enable_db_log', 'wp_reroute_email_db_log_option', 'wp_reroute_email_ignored_subjects', 'wpremail_db_version');


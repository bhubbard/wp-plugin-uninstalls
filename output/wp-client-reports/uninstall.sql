-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_client_reports_email_footer', 'wp_client_reports_version', 'wp_client_reports_enable_updates', 'wp_client_reports_enable_content_stats', 'wp_client_reports_default_title', 'wp_client_reports_default_email', 'wp_client_reports_default_intro', 'wp_client_reports_email_from', 'wp_client_reports_name_from', 'wp_client_reports_email_reply');


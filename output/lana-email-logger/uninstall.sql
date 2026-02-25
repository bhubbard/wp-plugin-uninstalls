-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lana_email_logger_cleanup_by_amount', 'lana_email_logger_cleanup_amount', 'lana_email_logger_cleanup_by_time', 'lana_email_logger_cleanup_time');


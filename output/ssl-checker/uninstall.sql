-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gritonl_ssl_checker_errors', 'gritonl_ssl_checker_debug', 'gritonl_ssl_checker_emails', 'gritonl_ssl_checker_ssl_expiry_ts', 'gritonl_ssl_checker_ssl_expiry', 'gritonl_ssl_checker_domain_expiry_ts', 'gritonl_ssl_checker_domain_expiry', 'gritonl_ssl_checker_alerts');


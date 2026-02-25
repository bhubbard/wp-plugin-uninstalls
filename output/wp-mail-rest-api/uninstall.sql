-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_mail_rest_api_target_urls', 'wp_mail_rest_api_disable_smtp');


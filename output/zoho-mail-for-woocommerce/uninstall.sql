-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zohomailwoo_client_id', 'zohomailwoo_client_secret', 'zohomailwoo_refresh_token', 'zohomailwoo_access_token', 'zohomailwoo_domain_name', 'zohomailwoo_timestamp', 'zohomailwoo_mail_accid', 'zohomailwoo_from_email_id', 'zohomailwoo_from_name', 'zohomailwoo_is_configured', 'zohomailwoo_from_General');
DELETE FROM wp_options WHERE option_name LIKE 'zohomailwoo_from_%';


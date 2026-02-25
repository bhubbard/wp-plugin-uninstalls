-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zeptowoo_client_id', 'zeptowoo_client_secret', 'zeptowoo_refresh_token', 'zeptowoo_access_token', 'zeptowoo_domain_name', 'zeptowoo_timestamp', 'zeptowoo_mail_agent', 'zeptowoo_from_email_id', 'zeptowoo_from_name', 'zeptowoo_cc_email_id', 'zeptowoo_bcc_email_id');
DELETE FROM wp_options WHERE option_name LIKE 'zeptowoo_%';


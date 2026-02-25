-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zmail_integ_domain_name', 'zmail_plugin_installed', 'zmail_auth_code', 'zmail_refresh_token', 'zmail_account_id', 'zmail_integ_from_email_id', 'zmail_access_token', 'redirect_url', 'zmail_integ_client_id', 'zmail_integ_client_secret', 'zmail_content_type', 'zmail_integ_from_name', 'zmail_integ_timestamp');


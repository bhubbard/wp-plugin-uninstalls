-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CRMZT_refresh_token', 'CRMZT_client_id', 'CRMZT_client_secret', 'CRMZT_auth_code', 'CRMZT_maxmind_account_id', 'CRMZT_maxmind_license_key', 'CRMZT_org_id', 'CRMZT_access_token', 'CRMZT_crmformswpbuilder_settings');


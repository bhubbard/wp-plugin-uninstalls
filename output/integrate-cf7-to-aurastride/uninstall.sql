-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7au_api_fields_mapping', 'cf7au_api_enable', 'cf7au_api_url', 'cf7au_authorization_code', 'cf7au_client_id', 'cf7au_client_secret', 'cf7au_authorization_key', 'cf7au_log_enable', 'cf7au_send_direct', 'cf7au_aurastride_api_refresh_token', 'cf7au_aurastride_api_access_token', 'cf7au_aurastride_api_expiry_time');


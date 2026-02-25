-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7zoho_connection_verified', 'cf7zoho_service', 'cf7zoho_access_token', 'cf7zoho_refresh_token', 'cf7zoho_client_id', 'cf7zoho_client_secret', 'cf7zoho_token_expiration', 'cf7zoho_api_domain', 'cf7zoho_connection_verified_at', 'cf7zoho_account_name', 'cf7zoho_data_center', 'cf7zoho_redirect_url', 'cf7zoho_org_id', 'cf7zoho_selected_module', 'cf7zoho_error_email', 'cf7zoho_client_redirect_url', 'cf7zoho_settings', 'cf7zoho_modules_zoho-crm', 'cf7zoho_modules_zoho-bigin');
DELETE FROM wp_options WHERE option_name LIKE 'cf7zoho_%';


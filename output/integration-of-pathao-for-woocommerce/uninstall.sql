-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pathao_access_token', 'pathao_refresh_token', 'woocommerce_pathao_settings', 'pathao_sandbox_mode', 'pathao_client_id', 'pathao_client_secret', 'pathao_installed', 'pathao_version');


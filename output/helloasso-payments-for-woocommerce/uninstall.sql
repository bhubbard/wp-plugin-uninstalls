-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_helloasso_settings', 'helloasso_access_token_asso', 'helloasso_refresh_token_asso', 'helloasso_testmode', 'helloasso_token_expires_in_asso', 'helloasso_refresh_token_expires_in_asso', 'helloasso_access_token', 'helloasso_refresh_token', 'helloasso_token_expires_in', 'helloasso_refresh_token_expires_in', 'helloasso_code_verifier', 'helloasso_state', 'helloasso_authorization_url', 'helloasso_organization_slug', 'helloasso_webhook_url', 'helloasso_webhook_data', 'woocommerce_db_version');


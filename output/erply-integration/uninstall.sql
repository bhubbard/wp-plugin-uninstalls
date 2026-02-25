-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('erply-integration_id', 'woocommerce_api_enabled', 'erply-integration-use-development-sandbox', 'erply-integration-account', 'erply-integration-user', 'erply-integration-password');


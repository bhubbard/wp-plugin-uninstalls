-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('giftup_company_id', 'giftup_api_key', 'giftup_version', 'giftup_woocommerce_operating_mode', 'giftup_woocommerce_enabled', 'giftup_woocommerce_apply_to_shipping', 'giftup_woocommerce_apply_to_taxes', 'company_id', 'api_key');


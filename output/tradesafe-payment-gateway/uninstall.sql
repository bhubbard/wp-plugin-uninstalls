-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tradesafe_settings', 'tradesafe_api_access', 'dokan_selling', 'woocommerce_myaccount_page_id', 'woocommerce_default_gateway', 'tradesafe_client_id', 'tradesafe_client_secret', 'tradesafe_transaction_industry', 'tradesafe_production_mode', 'tradesafe_transaction_marketplace', 'tradesafe_transaction_fee_allocation', 'tradesafe_transaction_fee', 'tradesafe_transaction_fee_type', 'processing_fee', 'tradesafe_payment_gateway_version', 'tradesafe_client_info', 'tradesafe_client_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dokan_profile_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('dokan_profile_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('dokan_profile_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dokan_profile_settings');


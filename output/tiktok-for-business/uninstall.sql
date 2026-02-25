-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tt4b_version', 'tt4b_last_product_sync_time', 'tt4b_external_business_id', 'tt4b_external_data', 'tt4b_app_id', 'tt4b_secret', 'tt4b_access_token', 'tt4b_external_data_key', 'tt4b_user_country', 'tt4b_eligibility_page_total', 'tt4b_mapi_total_gmv', 'tt4b_mapi_total_orders', 'tt4b_mapi_tenure', 'tt4b_should_send_s2s_events', 'tt4b_product_delete_queue', 'tt4b_product_restore_queue', 'tt4b_full_catalog_sync', 'tt4b_last_full_sync_time', 'tt4b_advertiser_id', 'tt4b_bc_id', 'tt4b_pixel_code', 'tt4b_catalog_id', 'tt4b_advanced_matching', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_store_phone');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'billing_postcode', 'billing_city', 'billing_state', 'billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'billing_postcode', 'billing_city', 'billing_state', 'billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'billing_postcode', 'billing_city', 'billing_state', 'billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'billing_postcode', 'billing_city', 'billing_state', 'billing_country');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('m_ua_active_plugins', 'mrkv_api_last_check_np', 'mrkv_api_fixed_np', 'nova-poshta_m_ua_settings', 'ukr-poshta_m_ua_settings', 'rozetka-delivery_m_ua_settings', 'nova-global_m_ua_settings', 'woocommerce_dimension_unit', 'woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_m_ua_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_city', 'shipping_city', 'billing_state', 'shipping_state', 'billing_address_1', 'shipping_address_1', 'billing_postcode', 'shipping_postcode', 'billing_address_2', 'shipping_address_2');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_city', 'shipping_city', 'billing_state', 'shipping_state', 'billing_address_1', 'shipping_address_1', 'billing_postcode', 'shipping_postcode', 'billing_address_2', 'shipping_address_2');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_city', 'shipping_city', 'billing_state', 'shipping_state', 'billing_address_1', 'shipping_address_1', 'billing_postcode', 'shipping_postcode', 'billing_address_2', 'shipping_address_2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_city', 'shipping_city', 'billing_state', 'shipping_state', 'billing_address_1', 'shipping_address_1', 'billing_postcode', 'shipping_postcode', 'billing_address_2', 'shipping_address_2');


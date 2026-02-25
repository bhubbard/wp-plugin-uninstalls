-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dmaw_datamap_address_woo_api_password', 'dmaw_datamap_address_woo_url', 'dmaw_datamap_address_woo_api_username', 'dmaw_datamap_access_token', 'dmaw_datamap_access_token_expiry', 'dmaw_datamap_refresh_token', 'dmaw_datamap_refresh_token_expiry', 'dmaw_datamap_address_woo_shipping_country', 'dmaw_datamap_address_woo_shipping_address', 'dmaw_datamap_address_woo_shipping_city', 'dmaw_datamap_address_woo_shipping_postcode', 'dmaw_datamap_address_woo_shipping_state', 'dmaw_datamap_address_woo_billing_address', 'dmaw_datamap_address_woo_billing_city', 'dmaw_datamap_address_woo_billing_postcode', 'dmaw_datamap_address_woo_billing_state', 'dmaw_datamap_address_woo_api_key', 'dmaw_datamap_address_woo_enable_extension', 'dmaw_datamap_address_woo_country_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_billing/dmaw_datamap_address_woo/dcode', '_wc_shipping/dmaw_datamap_address_woo/dcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_billing/dmaw_datamap_address_woo/dcode', '_wc_shipping/dmaw_datamap_address_woo/dcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_billing/dmaw_datamap_address_woo/dcode', '_wc_shipping/dmaw_datamap_address_woo/dcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_billing/dmaw_datamap_address_woo/dcode', '_wc_shipping/dmaw_datamap_address_woo/dcode');


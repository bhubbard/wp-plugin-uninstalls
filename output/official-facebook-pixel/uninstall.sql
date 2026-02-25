-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('is_wordpress_com_hosted', 'facebook_wpcom_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone', '_variable_pricing', 'edd_variable_prices', 'edd_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone', '_variable_pricing', 'edd_variable_prices', 'edd_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone', '_variable_pricing', 'edd_variable_prices', 'edd_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone', '_variable_pricing', 'edd_variable_prices', 'edd_price');


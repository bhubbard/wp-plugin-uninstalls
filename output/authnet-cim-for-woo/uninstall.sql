-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_email', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', '_authnet_card');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_email', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', '_authnet_card');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_email', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', '_authnet_card');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_email', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', '_authnet_card');


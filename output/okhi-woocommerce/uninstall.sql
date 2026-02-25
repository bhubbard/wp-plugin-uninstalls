-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_okhi-integration_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_okhi_street_name', 'billing_okhi_property_name', 'billing_okhi_property_number', 'billing_okhi_lat', 'billing_okhi_lon', 'billing_okhi_place_id', 'billing_okhi_id', 'billing_okhi_url', 'billing_okhi_state', 'billing_okhi_neighborhood');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_okhi_street_name', 'billing_okhi_property_name', 'billing_okhi_property_number', 'billing_okhi_lat', 'billing_okhi_lon', 'billing_okhi_place_id', 'billing_okhi_id', 'billing_okhi_url', 'billing_okhi_state', 'billing_okhi_neighborhood');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_okhi_street_name', 'billing_okhi_property_name', 'billing_okhi_property_number', 'billing_okhi_lat', 'billing_okhi_lon', 'billing_okhi_place_id', 'billing_okhi_id', 'billing_okhi_url', 'billing_okhi_state', 'billing_okhi_neighborhood');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_okhi_street_name', 'billing_okhi_property_name', 'billing_okhi_property_number', 'billing_okhi_lat', 'billing_okhi_lon', 'billing_okhi_place_id', 'billing_okhi_id', 'billing_okhi_url', 'billing_okhi_state', 'billing_okhi_neighborhood');


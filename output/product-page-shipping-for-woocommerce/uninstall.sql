-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcss_options', 'wcss_enable_shipping_dropdown', 'wcss_eta_map', 'wcss_pro_options', 'wcss_license_key', 'wcss_license_status', 'wcss_license_activated_on', 'wcss_license_response', 'active_sitewide_plugins', 'woocommerce_ship_to_destination', 'woocommerce_enable_order_comments');


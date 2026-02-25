-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_gateways_by_location_force_js_checkout_update', 'alg_wc_gateways_by_location_version', 'alg_wc_gateways_by_location_country_type', 'alg_wc_gateways_by_location_state_type', 'alg_wc_gateways_by_location_cities_type', 'alg_wc_gateways_by_location_postcodes_type', 'woocommerce_default_country', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%section_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'cf_geo_defender_api_key', 'elementor_cpt_support', 'cf_geoplugin', 'woocommerce_cf_geoplugin_conversion', 'woocommerce_cf_geoplugin_conversion_adjust', 'woocommerce_cf_geoplugin_save_checkout_location', 'woocommerce_cf_geoplugin_conversion_in_admin', 'woocommerce_default_customer_address', 'woocommerce_cf_geoplugin_conversion_rounded', 'woocommerce_cf_geoplugin_conversion_rounded_option', 'delete_expired_transients_last_run');
DELETE FROM wp_options WHERE option_name LIKE '%-activation';
DELETE FROM wp_options WHERE option_name LIKE '%-ID';
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE '%-deactivation';
DELETE FROM wp_options WHERE option_name LIKE '%-db-version';
DELETE FROM wp_options WHERE option_name LIKE '%-all-geodata';
DELETE FROM wp_options WHERE option_name LIKE '%-library-version';
DELETE FROM wp_options WHERE option_name LIKE '%-license';
DELETE FROM wp_options WHERE option_name LIKE '%-reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_dimiss_notice_plugin_support';
DELETE FROM wp_options WHERE option_name LIKE '%-rest';
DELETE FROM wp_options WHERE option_name LIKE '%-woo-transition';
DELETE FROM wp_options WHERE option_name LIKE '%-postcode_children';
DELETE FROM wp_options WHERE option_name LIKE '%_is_localhost_127.0.1.1';
DELETE FROM wp_options WHERE option_name LIKE 'cfgp-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cfgp-banner-default', 'city', 'country', 'cfgp_menu_item_control', 'location', 'cfgp-geotag-enable', 'cfgp-dc-title', 'cfgp-region', 'cfgp-placename', 'cfgp-latitude', 'cfgp-longitude', 'city_slug', '_cfgp_location_log', '_customer_user_agent', '_billing_country', '_customer_ip_address', '_billing_city', '_billing_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('cfgp-banner-default', 'city', 'country', 'cfgp_menu_item_control', 'location', 'cfgp-geotag-enable', 'cfgp-dc-title', 'cfgp-region', 'cfgp-placename', 'cfgp-latitude', 'cfgp-longitude', 'city_slug', '_cfgp_location_log', '_customer_user_agent', '_billing_country', '_customer_ip_address', '_billing_city', '_billing_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('cfgp-banner-default', 'city', 'country', 'cfgp_menu_item_control', 'location', 'cfgp-geotag-enable', 'cfgp-dc-title', 'cfgp-region', 'cfgp-placename', 'cfgp-latitude', 'cfgp-longitude', 'city_slug', '_cfgp_location_log', '_customer_user_agent', '_billing_country', '_customer_ip_address', '_billing_city', '_billing_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cfgp-banner-default', 'city', 'country', 'cfgp_menu_item_control', 'location', 'cfgp-geotag-enable', 'cfgp-dc-title', 'cfgp-region', 'cfgp-placename', 'cfgp-latitude', 'cfgp-longitude', 'city_slug', '_cfgp_location_log', '_customer_user_agent', '_billing_country', '_customer_ip_address', '_billing_city', '_billing_state');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%banner_default';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%banner_default';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%banner_default';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%banner_default';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%redirection';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%redirection';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%redirection';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%redirection';


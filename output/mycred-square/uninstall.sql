-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_square_settings', 'woo_square_location_id_free', 'woo_square_access_token_free', 'mycred_pref_core', 'woo_square_auth_response', 'woo_square_access_token_cauth', 'woo_square_update_msg_dissmiss', 'woo_square_auth_notice', 'woo_square_locations_free', 'woo_square_business_name_free');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_square_settings');
delete_site_option('woocommerce_square_settings');
delete_option('woo_square_location_id_free');
delete_site_option('woo_square_location_id_free');
delete_option('woo_square_access_token_free');
delete_site_option('woo_square_access_token_free');
delete_option('mycred_pref_core');
delete_site_option('mycred_pref_core');
delete_option('woo_square_auth_response');
delete_site_option('woo_square_auth_response');
delete_option('woo_square_access_token_cauth');
delete_site_option('woo_square_access_token_cauth');
delete_option('woo_square_update_msg_dissmiss');
delete_site_option('woo_square_update_msg_dissmiss');
delete_option('woo_square_auth_notice');
delete_site_option('woo_square_auth_notice');
delete_option('woo_square_locations_free');
delete_site_option('woo_square_locations_free');
delete_option('woo_square_business_name_free');
delete_site_option('woo_square_business_name_free');


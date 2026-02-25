<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'novaksolutions_upsell_default_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('novaksolutions_upsell_default_image');
delete_site_option('novaksolutions_upsell_default_image');
delete_option('novaksolutions_upsell_default_image_width');
delete_site_option('novaksolutions_upsell_default_image_width');
delete_option('novaksolutions_upsell_default_image_height');
delete_site_option('novaksolutions_upsell_default_image_height');
delete_option('novaksolutions_upsell_merchantaccount_id');
delete_site_option('novaksolutions_upsell_merchantaccount_id');
delete_option('novaksolutions_upsell_button_type');
delete_site_option('novaksolutions_upsell_button_type');
delete_option('infusionsoft_sdk_app_name');
delete_site_option('infusionsoft_sdk_app_name');
delete_option('infusionsoft_sdk_api_key');
delete_site_option('infusionsoft_sdk_api_key');
delete_option('novaksolutions_upsell_test_merchantaccount_id');
delete_site_option('novaksolutions_upsell_test_merchantaccount_id');
delete_option('novaksolutions_upsell_default_success_url');
delete_site_option('novaksolutions_upsell_default_success_url');
delete_option('novaksolutions_upsell_default_failure_url');
delete_site_option('novaksolutions_upsell_default_failure_url');
delete_option('novaksolutions_upsell_default_button_text');
delete_site_option('novaksolutions_upsell_default_button_text');
delete_option('novaksolutions_upsell_default_action_set_id');
delete_site_option('novaksolutions_upsell_default_action_set_id');
delete_option('novaksolutions_upsell_default_id');
delete_site_option('novaksolutions_upsell_default_id');
delete_option('novaksolutions_upsell_default_class');
delete_site_option('novaksolutions_upsell_default_class');


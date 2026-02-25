<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcgwp_cart_hook');
delete_site_option('wcgwp_cart_hook');
delete_option('wcgwp_cart_display');
delete_site_option('wcgwp_cart_display');
delete_option('current_theme');
delete_site_option('current_theme');
delete_option('wcgwp_lt6_templates');
delete_site_option('wcgwp_lt6_templates');
delete_option('wcgwp_number');
delete_site_option('wcgwp_number');
delete_option('wcgwp_details');
delete_site_option('wcgwp_details');
delete_option('wcgwp_link');
delete_site_option('wcgwp_link');
delete_option('wcGIFTWRAPPER_VERSION');
delete_site_option('wcGIFTWRAPPER_VERSION');
delete_option('wcgw_version');
delete_site_option('wcgw_version');
delete_option('wcgwp_modal');
delete_site_option('wcgwp_modal');
delete_option('wcgwp_donate_dismiss_06-28');
delete_site_option('wcgwp_donate_dismiss_06-28');
delete_option('wcgwp_display');
delete_site_option('wcgwp_display');
delete_option('wcgwp_strings');
delete_site_option('wcgwp_strings');
delete_option('wcgwp_category_id');
delete_site_option('wcgwp_category_id');
delete_option('wcgwp_show_thumb');
delete_site_option('wcgwp_show_thumb');
delete_option('wcgwp_textarea_limit');
delete_site_option('wcgwp_textarea_limit');
delete_option('wcgwp_checkbox_link');
delete_site_option('wcgwp_checkbox_link');
delete_option('wcgwp_hide_price');
delete_site_option('wcgwp_hide_price');
delete_option('wcgwp_multiples');
delete_site_option('wcgwp_multiples');
delete_option(' wcgwp_multiples');
delete_site_option(' wcgwp_multiples');
delete_option('wcgwp_delete_all');
delete_site_option('wcgwp_delete_all');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );


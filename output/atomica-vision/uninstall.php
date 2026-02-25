<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atomica_vision_auth_token');
delete_site_option('atomica_vision_auth_token');
delete_option('atomica_vision_try_on_button_text');
delete_site_option('atomica_vision_try_on_button_text');
delete_option('atomica_vision_try_on_close_button_text');
delete_site_option('atomica_vision_try_on_close_button_text');
delete_option('atomica_vision_try_on_button_position');
delete_site_option('atomica_vision_try_on_button_position');
delete_option('atomica_vision_try_on_auto_start');
delete_site_option('atomica_vision_try_on_auto_start');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'atomica_vision_product_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'atomica_vision_product_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'atomica_vision_product_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'atomica_vision_product_color' ) );


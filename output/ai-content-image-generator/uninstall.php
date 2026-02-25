<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('existing_api_model');
delete_site_option('existing_api_model');
delete_option('existing_temperature');
delete_site_option('existing_temperature');
delete_option('existing_max_tokens');
delete_site_option('existing_max_tokens');
delete_option('existing_frequency_penalty');
delete_site_option('existing_frequency_penalty');
delete_option('existing_presence_penalty');
delete_site_option('existing_presence_penalty');
delete_option('existing_api_n');
delete_site_option('existing_api_n');
delete_option('api_script_key');
delete_site_option('api_script_key');
delete_option('existing_img_size');
delete_site_option('existing_img_size');
delete_option('existing_num_images');
delete_site_option('existing_num_images');
delete_option('api_opaigpt_language');
delete_site_option('api_opaigpt_language');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );


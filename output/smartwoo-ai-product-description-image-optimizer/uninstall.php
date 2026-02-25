<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartwoo_enable_dalle');
delete_site_option('smartwoo_enable_dalle');
delete_option('smartwoo_api_key');
delete_site_option('smartwoo_api_key');
delete_option('smartwoo_max_tokens');
delete_site_option('smartwoo_max_tokens');
delete_option('smartwoo_description_tone');
delete_site_option('smartwoo_description_tone');
delete_option('smartwoo_gpt_model');
delete_site_option('smartwoo_gpt_model');
delete_option('smartwoo_prompt_title');
delete_site_option('smartwoo_prompt_title');
delete_option('smartwoo_prompt_short_description');
delete_site_option('smartwoo_prompt_short_description');
delete_option('smartwoo_prompt_full_description');
delete_site_option('smartwoo_prompt_full_description');
delete_option('smartwoo_prompt_tags');
delete_site_option('smartwoo_prompt_tags');
delete_option('smartwoo_prompt_image_alt_text');
delete_site_option('smartwoo_prompt_image_alt_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );


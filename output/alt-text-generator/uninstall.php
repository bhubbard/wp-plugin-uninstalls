<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atgai_api_key');
delete_site_option('atgai_api_key');
delete_option('atgai_domain_id');
delete_site_option('atgai_domain_id');
delete_option('atgai_language');
delete_site_option('atgai_language');
delete_option('atgai_auto_generate');
delete_site_option('atgai_auto_generate');
delete_option('atgai_enable_chatgpt_enhancement');
delete_site_option('atgai_enable_chatgpt_enhancement');
delete_option('atgai_chatgpt_enhancement_prompt');
delete_site_option('atgai_chatgpt_enhancement_prompt');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );


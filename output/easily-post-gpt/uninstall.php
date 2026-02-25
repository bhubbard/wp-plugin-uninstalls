<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gpt2wp_secret_key');
delete_site_option('gpt2wp_secret_key');
delete_option('gpt2wp_email');
delete_site_option('gpt2wp_email');
delete_option('gpt2wp_custom_field_1');
delete_site_option('gpt2wp_custom_field_1');
delete_option('gpt2wp_onboarding_completed');
delete_site_option('gpt2wp_onboarding_completed');
delete_option('gpt2wp_pexel_key');
delete_site_option('gpt2wp_pexel_key');
delete_option('gpt2wp_notifications');
delete_site_option('gpt2wp_notifications');
delete_option('gpt2wp_custom_field_2');
delete_site_option('gpt2wp_custom_field_2');
delete_option('gpt2wp_custom_field_3');
delete_site_option('gpt2wp_custom_field_3');
delete_option('gpt2wp_admin_default_post_status');
delete_site_option('gpt2wp_admin_default_post_status');
delete_option('gpt2wp_webhook_url');
delete_site_option('gpt2wp_webhook_url');
delete_option('easily_post_gpt_company_info');
delete_site_option('easily_post_gpt_company_info');
delete_option('easily_post_gpt_categories');
delete_site_option('easily_post_gpt_categories');
delete_option('easily_post_gpt_keyword_groups');
delete_site_option('easily_post_gpt_keyword_groups');
delete_option('easily_post_gpt_focus_areas');
delete_site_option('easily_post_gpt_focus_areas');

// Delete Transients
delete_transient('easily_post_gpt_keyword_planner_saved');
delete_site_transient('easily_post_gpt_keyword_planner_saved');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );


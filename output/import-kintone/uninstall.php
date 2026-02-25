<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kintone_to_wp_kintone_url');
delete_site_option('kintone_to_wp_kintone_url');
delete_option('kintone_to_wp_kintone_api_token');
delete_site_option('kintone_to_wp_kintone_api_token');
delete_option('kintone_to_wp_target_appid');
delete_site_option('kintone_to_wp_target_appid');
delete_option('kintone_to_wp_reflect_post_type');
delete_site_option('kintone_to_wp_reflect_post_type');
delete_option('kintone_to_wp_kintone_app_form_data');
delete_site_option('kintone_to_wp_kintone_app_form_data');
delete_option('kintone_to_wp_kintone_field_code_for_post_title');
delete_site_option('kintone_to_wp_kintone_field_code_for_post_title');
delete_option('kintone_to_wp_kintone_field_code_for_post_contents');
delete_site_option('kintone_to_wp_kintone_field_code_for_post_contents');
delete_option('kintone_to_wp_kintone_field_code_for_terms');
delete_site_option('kintone_to_wp_kintone_field_code_for_terms');
delete_option('kintone_to_wp_setting_custom_fields');
delete_site_option('kintone_to_wp_setting_custom_fields');
delete_option('kintone_to_wp_kintone_field_code_for_featured_image');
delete_site_option('kintone_to_wp_kintone_field_code_for_featured_image');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'kintone_record_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'kintone_record_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'kintone_record_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'kintone_record_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_name' ) );


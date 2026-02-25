<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_staff_listing_default_slug');
delete_site_option('_staff_listing_default_slug');
delete_option('_staff_listing_default_name_singular');
delete_site_option('_staff_listing_default_name_singular');
delete_option('_staff_listing_default_name_plural');
delete_site_option('_staff_listing_default_name_plural');
delete_option('_staff_listing_custom_slug');
delete_site_option('_staff_listing_custom_slug');
delete_option('_staff_listing_custom_name_singular');
delete_site_option('_staff_listing_custom_name_singular');
delete_option('_staff_listing_custom_name_plural');
delete_site_option('_staff_listing_custom_name_plural');
delete_option('_staff_listing_default_html');
delete_site_option('_staff_listing_default_html');
delete_option('_staff_listing_default_css');
delete_site_option('_staff_listing_default_css');
delete_option('_staff_listing_default_tag_string');
delete_site_option('_staff_listing_default_tag_string');
delete_option('_staff_listing_default_formatted_tag_string');
delete_site_option('_staff_listing_default_formatted_tag_string');
delete_option('_staff_listing_default_tags');
delete_site_option('_staff_listing_default_tags');
delete_option('_staff_listing_default_formatted_tags');
delete_site_option('_staff_listing_default_formatted_tags');
delete_option('_staff_listing_write_external_css');
delete_site_option('_staff_listing_write_external_css');
delete_option('_staff_listing_custom_html');
delete_site_option('_staff_listing_custom_html');
delete_option('_staff_listing_custom_css');
delete_site_option('_staff_listing_custom_css');
delete_option('_staff_listing_flush_rewrite_rules_flag');
delete_site_option('_staff_listing_flush_rewrite_rules_flag');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_staff_member_bio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_staff_member_bio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_staff_member_bio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_staff_member_bio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_staff_member_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_staff_member_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_staff_member_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_staff_member_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_staff_member_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_staff_member_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_staff_member_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_staff_member_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_staff_member_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_staff_member_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_staff_member_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_staff_member_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_staff_member_fb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_staff_member_fb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_staff_member_fb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_staff_member_fb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_staff_member_tw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_staff_member_tw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_staff_member_tw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_staff_member_tw' ) );


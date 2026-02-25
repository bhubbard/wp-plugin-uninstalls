<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ny_subscribe_theme_css');
delete_site_option('ny_subscribe_theme_css');
delete_option('ny_subscribe_field_custom');
delete_site_option('ny_subscribe_field_custom');
delete_option('ny_subscribe_ticked');
delete_site_option('ny_subscribe_ticked');
delete_option('links_updated_date_format');
delete_site_option('links_updated_date_format');
delete_option('ny_subscribe_field_sub_form');
delete_site_option('ny_subscribe_field_sub_form');
delete_option('ny_subscribe_css');
delete_site_option('ny_subscribe_css');
delete_option('ny_subscribe_spam_ip_list_remote');
delete_site_option('ny_subscribe_spam_ip_list_remote');
delete_option('ny_subscribe_spam_ip_list_server');
delete_site_option('ny_subscribe_spam_ip_list_server');
delete_option('ny_subscribe_spam_email_list');
delete_site_option('ny_subscribe_spam_email_list');
delete_option('ny_subscribe_spam_domain_list');
delete_site_option('ny_subscribe_spam_domain_list');
delete_option('ny_subscribe_wipe');
delete_site_option('ny_subscribe_wipe');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ny_subscribe_field_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ny_subscribe_field_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ny_subscribe_field_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ny_subscribe_field_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'NYSEmailSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'NYSEmailSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'NYSEmailSent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'NYSEmailSent' ) );


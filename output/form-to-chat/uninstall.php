<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whatsform_url');
delete_site_option('whatsform_url');
delete_option('whatsform_page_title');
delete_site_option('whatsform_page_title');
delete_option('whatsform_path');
delete_site_option('whatsform_path');
delete_option('whatsform_url_input');
delete_site_option('whatsform_url_input');
delete_option('whatsform_page_title_input');
delete_site_option('whatsform_page_title_input');
delete_option('whatsform_path_input');
delete_site_option('whatsform_path_input');
delete_option('whatsform_widget_snippet');
delete_site_option('whatsform_widget_snippet');
delete_option('whatsform_widget_show_on');
delete_site_option('whatsform_widget_show_on');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_whatsform_inpost_snippet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_whatsform_inpost_snippet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_whatsform_inpost_snippet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_whatsform_inpost_snippet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'whatsform_getting_started_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'whatsform_getting_started_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'whatsform_getting_started_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'whatsform_getting_started_notice' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('getterms_token');
delete_site_option('getterms_token');
delete_option('getterms-manual-widget');
delete_site_option('getterms-manual-widget');
delete_option('getterms-auto-widget');
delete_site_option('getterms-auto-widget');
delete_option('getterms-show-widget');
delete_site_option('getterms-show-widget');
delete_option('getterms-auto-language-detection');
delete_site_option('getterms-auto-language-detection');
delete_option('getterms-widget-slug');
delete_site_option('getterms-widget-slug');
delete_option('getterms-widget-language');
delete_site_option('getterms-widget-language');
delete_option('getterms-default-language');
delete_site_option('getterms-default-language');
delete_option('getterms-languages');
delete_site_option('getterms-languages');
delete_option('getterms-policies');
delete_site_option('getterms-policies');
delete_option('getterms-token');
delete_site_option('getterms-token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_custom' ) );


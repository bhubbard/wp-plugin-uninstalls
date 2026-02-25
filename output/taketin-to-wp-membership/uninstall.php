<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmp-finish-setup');
delete_site_option('tmp-finish-setup');
delete_option('tmp-settings');
delete_site_option('tmp-settings');
delete_option('taketin-mp-messages');
delete_site_option('taketin-mp-messages');
delete_option('tmp-use-tickets');
delete_site_option('tmp-use-tickets');
delete_option('tmp-messages');
delete_site_option('tmp-messages');
delete_option('tmp-db-version');
delete_site_option('tmp-db-version');
delete_option('tmp_use_tickets');
delete_site_option('tmp_use_tickets');
delete_option('tmp2db_db_version');
delete_site_option('tmp2db_db_version');
delete_option('tmp2wp_db_version');
delete_site_option('tmp2wp_db_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_nav_menu_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_nav_menu_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_nav_menu_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_nav_menu_exclude' ) );


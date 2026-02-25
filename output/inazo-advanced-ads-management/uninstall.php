<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('inazo_adv_ads_management_db_version');
delete_site_option('inazo_adv_ads_management_db_version');
delete_option('widget_inazo_adv_ads_manager');
delete_site_option('widget_inazo_adv_ads_manager');


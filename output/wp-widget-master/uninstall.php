<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WidgetMaster_On_Homepage');
delete_site_option('WidgetMaster_On_Homepage');
delete_option('WidgetMaster_On_Posts');
delete_site_option('WidgetMaster_On_Posts');
delete_option('WidgetMaster_On_Pages');
delete_site_option('WidgetMaster_On_Pages');
delete_option('WidgetMaster_On_Search');
delete_site_option('WidgetMaster_On_Search');
delete_option('WidgetMaster_On_Archives');
delete_site_option('WidgetMaster_On_Archives');
delete_option('WidgetMaster_Icon_Align');
delete_site_option('WidgetMaster_Icon_Align');
delete_option('WidgetMaster_Border_Color');
delete_site_option('WidgetMaster_Border_Color');
delete_option('WidgetMaster_Icon_padding');
delete_site_option('WidgetMaster_Icon_padding');
delete_option('WidgetMaster_Icon_size');
delete_site_option('WidgetMaster_Icon_size');
delete_option('WidgetMaster_Icon_Open');
delete_site_option('WidgetMaster_Icon_Open');
delete_option('WidgetMaster_Icon_Close');
delete_site_option('WidgetMaster_Icon_Close');
delete_option('WidgetMaster_Icon_color');
delete_site_option('WidgetMaster_Icon_color');
delete_option('WidgetMaster_Icon_Bg_color');
delete_site_option('WidgetMaster_Icon_Bg_color');
delete_option('WidgetMaster_Border_Radius');
delete_site_option('WidgetMaster_Border_Radius');
delete_option('WidgetMaster_Session_Expiration');
delete_site_option('WidgetMaster_Session_Expiration');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('WidgetMaster_Open_Close_Main_Feature');
delete_site_option('WidgetMaster_Open_Close_Main_Feature');
delete_option('WidgetMaster_Turn_On_Off_Features');
delete_site_option('WidgetMaster_Turn_On_Off_Features');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'WM_widget_name_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('WidgetMaster_fromemail');
delete_site_option('WidgetMaster_fromemail');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_session_garbage_collection');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emdn_pushem_id');
delete_site_option('emdn_pushem_id');
delete_option('emdn_pushem_key');
delete_site_option('emdn_pushem_key');
delete_option('emdn_pushem_source');
delete_site_option('emdn_pushem_source');
delete_option('emdn_pushem_token');
delete_site_option('emdn_pushem_token');
delete_option('emdn_pushem_domain');
delete_site_option('emdn_pushem_domain');
delete_option('emdn_pushem_subdomain');
delete_site_option('emdn_pushem_subdomain');
delete_option('emdn_pushem_googleid');
delete_site_option('emdn_pushem_googleid');
delete_option('emdn_pushem_gcmapi');
delete_site_option('emdn_pushem_gcmapi');
delete_option('emdn_pushem_type');
delete_site_option('emdn_pushem_type');
delete_option('emdn_pushem_mode');
delete_site_option('emdn_pushem_mode');
delete_option('emdn_pushem_widget_show');
delete_site_option('emdn_pushem_widget_show');

// Clear Cron Jobs
wp_clear_scheduled_hook('em_desktop_notifications_lite_addon_time_schedule_event_1');
wp_clear_scheduled_hook('em_desktop_notifications_lite_addon_time_schedule_event_2');
wp_clear_scheduled_hook('em_desktop_notifications_lite_addon_time_schedule_event_3');
wp_clear_scheduled_hook('em_desktop_notifications_lite_addon_time_schedule_event_5');
wp_clear_scheduled_hook('em_desktop_notifications_lite_addon_time_schedule_event_7');
wp_clear_scheduled_hook('em_desktop_notifications_lite_addon_time_schedule_event_10');
wp_clear_scheduled_hook('em_desktop_notifications_lite_addon_time_schedule_event_15');
wp_clear_scheduled_hook('em_desktop_notifications_lite_addon_time_schedule_event_20');
wp_clear_scheduled_hook('em_desktop_notifications_lite_addon_time_schedule_event_30');
wp_clear_scheduled_hook('em_desktop_notifications_lite_addon_time_schedule_event_60');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'role' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ac_var' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ac_var' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ac_var' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ac_var' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ac_var_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ac_var_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ac_var_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ac_var_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ac_hook' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ac_hook' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ac_hook' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ac_hook' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ac_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ac_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ac_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ac_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ac_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ac_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ac_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ac_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ac_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ac_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ac_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ac_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ac_user_con' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ac_user_con' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ac_user_con' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ac_user_con' ) );


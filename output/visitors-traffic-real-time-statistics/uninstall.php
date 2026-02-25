<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ahcfree_first_time_setup');
delete_site_option('ahcfree_first_time_setup');
delete_option('ahcfree_custom_timezone');
delete_site_option('ahcfree_custom_timezone');
delete_option('ahcfree_upgrade_message');
delete_site_option('ahcfree_upgrade_message');
delete_option('ahcfree_new_updates');
delete_site_option('ahcfree_new_updates');
delete_option('ahcfree_hide_top_bar_icon');
delete_site_option('ahcfree_hide_top_bar_icon');
delete_option('ahcfree_delete_plugin_data_on_uninstall');
delete_site_option('ahcfree_delete_plugin_data_on_uninstall');
delete_option('ahcproExcludeRoles');
delete_site_option('ahcproExcludeRoles');
delete_option('ahcfree_ahcfree_haships');
delete_site_option('ahcfree_ahcfree_haships');
delete_option('ahcfree_save_ips_opn');
delete_site_option('ahcfree_save_ips_opn');
delete_option('ahcproUserRoles');
delete_site_option('ahcproUserRoles');
delete_option('ahcproRobots');
delete_site_option('ahcproRobots');
delete_option('ahcfree_wp_hits_counter_options');
delete_site_option('ahcfree_wp_hits_counter_options');
delete_option('ahc_db_indexes_ahc_online_users_added');
delete_site_option('ahc_db_indexes_ahc_online_users_added');

// Clear Cron Jobs
wp_clear_scheduled_hook('ahc_cleanup_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ahcfree_total_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ahcfree_total_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ahcfree_total_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ahcfree_total_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ahcfree_unique_visitors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ahcfree_unique_visitors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ahcfree_unique_visitors' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ahcfree_unique_visitors' ) );


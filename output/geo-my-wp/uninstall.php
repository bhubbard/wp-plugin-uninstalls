<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmw_version');
delete_site_option('gmw_version');
delete_option('gmw_options');
delete_site_option('gmw_options');
delete_option('gmw_addons_status');
delete_site_option('gmw_addons_status');
delete_option('gmw_license_data');
delete_site_option('gmw_license_data');
delete_option('gmw_addons_data');
delete_site_option('gmw_addons_data');
delete_option('gmw_internal_cache_status');
delete_site_option('gmw_internal_cache_status');
delete_option('gmw_tracking_notice');
delete_site_option('gmw_tracking_notice');
delete_option('gmw_tracking_last_send');
delete_site_option('gmw_tracking_last_send');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_fields' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('gmw_license_keys');
delete_site_option('gmw_license_keys');
delete_option('gmw_premium_plugin_status');
delete_site_option('gmw_premium_plugin_status');
delete_option('gmw_old_locations_tables_exist');
delete_site_option('gmw_old_locations_tables_exist');
delete_option('gmw_old_locations_tables_updated');
delete_site_option('gmw_old_locations_tables_updated');
delete_option('gmw_importer_bp_xprofile_fields');
delete_site_option('gmw_importer_bp_xprofile_fields');
delete_option('gmw_importer_post_meta_fields');
delete_site_option('gmw_importer_post_meta_fields');
delete_option('gmw_importer_user_meta_fields');
delete_site_option('gmw_importer_user_meta_fields');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('gmw_forms');
delete_site_option('gmw_forms');
delete_option('gmw_forms_old');
delete_site_option('gmw_forms_old');
delete_option('gmw_extensions_updater');
delete_site_option('gmw_extensions_updater');
delete_option('gmw_addons_version');
delete_site_option('gmw_addons_version');
delete_option('gmw_forms_table_updated');
delete_site_option('gmw_forms_table_updated');
delete_option('gmw_db_version');
delete_site_option('gmw_db_version');

// Delete Transients
delete_transient('gmw_extensions_feed');
delete_site_transient('gmw_extensions_feed');
delete_transient('gmw_verify_license_keys');
delete_site_transient('gmw_verify_license_keys');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gmw_geocoded_%', '_site_transient_gmw_geocoded_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_meta', '_site_transient_%_meta' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_id', '_site_transient_%_id' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gmw_user_ids_by_role_%', '_site_transient_gmw_user_ids_by_role_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('gmw_weekly_scheduled_events');
wp_clear_scheduled_hook('gmw_daily_scheduled_events');
wp_clear_scheduled_hook('gmw_hourly_scheduled_events');
wp_clear_scheduled_hook('gmw_clear_expired_transients');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wppl_days_hours' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wppl_days_hours' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wppl_days_hours' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wppl_days_hours' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gmw_locations_export' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gmw_locations_export' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gmw_locations_export' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gmw_locations_export' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gmw_featured_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gmw_featured_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gmw_featured_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gmw_featured_object' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'select_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'select_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'select_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'select_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bp_ps_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bp_ps_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bp_ps_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bp_ps_options' ) );


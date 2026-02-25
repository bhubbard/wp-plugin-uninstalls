<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('wpl_auto_tour');
delete_site_option('wpl_auto_tour');
delete_option('wpl_version');
delete_site_option('wpl_version');
delete_option('wpl_basic_migration');
delete_site_option('wpl_basic_migration');
delete_option('wpl_addon_idx_user_credentials');
delete_site_option('wpl_addon_idx_user_credentials');
delete_option('wpl_addon_idx_user_steps_done');
delete_site_option('wpl_addon_idx_user_steps_done');
delete_option('wpl_addon_idx_mls_data');
delete_site_option('wpl_addon_idx_mls_data');
delete_option('wpl_addon_idx_download_images');
delete_site_option('wpl_addon_idx_download_images');
delete_option('wpl_addon_idx_user_config_status');
delete_site_option('wpl_addon_idx_user_config_status');
delete_option('wpl_idx_addon_saved_trial_pids');
delete_site_option('wpl_idx_addon_saved_trial_pids');
delete_option('wpl_idx_addon_trial_imported');
delete_site_option('wpl_idx_addon_trial_imported');
delete_option('wpl_addon_idx_trial_reseted');
delete_site_option('wpl_addon_idx_trial_reseted');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpl_gmap_hits_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpl_gmap_hits_date_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpl_addon_facebook_init_info');
delete_site_option('wpl_addon_facebook_init_info');
delete_option('wpl_addon_facebook_catalog_id');
delete_site_option('wpl_addon_facebook_catalog_id');
delete_option('wpl_facebook_addon_property_list');
delete_site_option('wpl_facebook_addon_property_list');

// Clear Cron Jobs
wp_clear_scheduled_hook('rlty_check_user_license');


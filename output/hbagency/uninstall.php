<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hbagency_wp_website_id');
delete_site_option('hbagency_wp_website_id');
delete_option('hbagency_wp_website_placements');
delete_site_option('hbagency_wp_website_placements');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hbagency_wp_placement_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hbagency_wp_website_placements_cache_inarticle');
delete_site_option('hbagency_wp_website_placements_cache_inarticle');
delete_option('hbagency_wp_enable_ads_txt');
delete_site_option('hbagency_wp_enable_ads_txt');
delete_option('hbagency_wp_cmp');
delete_site_option('hbagency_wp_cmp');
delete_option('hbagency_wp_cls');
delete_site_option('hbagency_wp_cls');
delete_option('hbagency_wp_website_script');
delete_site_option('hbagency_wp_website_script');
delete_option('hbagency_wp_has_cmp');
delete_site_option('hbagency_wp_has_cmp');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_type' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pos' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_count' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_par' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hbagency_wp_website_status');
delete_site_option('hbagency_wp_website_status');
delete_option('hbagency_wp_website_status_detail');
delete_site_option('hbagency_wp_website_status_detail');
delete_option('hbagency_wp_website_url');
delete_site_option('hbagency_wp_website_url');
delete_option('hbagency_wp_website_ads_txt');
delete_site_option('hbagency_wp_website_ads_txt');
delete_option('hbagency_wp_website_ext_id');
delete_site_option('hbagency_wp_website_ext_id');
delete_option('hbagency_wp_website_ads_txt_additional_lines');
delete_site_option('hbagency_wp_website_ads_txt_additional_lines');

// Clear Cron Jobs
wp_clear_scheduled_hook('hbagency_wp_cron_check_for_updates');


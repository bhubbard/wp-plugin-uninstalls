<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jetpack_protect_active');
delete_site_option('jetpack_protect_active');
delete_option('jetpack_offline_mode');
delete_site_option('jetpack_offline_mode');
delete_option('wpcom_public_coming_soon');
delete_site_option('wpcom_public_coming_soon');
delete_option('insta_gallery_settings');
delete_site_option('insta_gallery_settings');
delete_option('insta_gallery_setting');
delete_site_option('insta_gallery_setting');
delete_option('insta_gallery_items');
delete_site_option('insta_gallery_items');
delete_option('insta_gallery_feeds');
delete_site_option('insta_gallery_feeds');
delete_option('insta_gallery_token');
delete_site_option('insta_gallery_token');
delete_option('insta_gallery_accounts');
delete_site_option('insta_gallery_accounts');
delete_option('insta_gallery_iac');
delete_site_option('insta_gallery_iac');
delete_option('cron');
delete_site_option('cron');

// Delete Transients
delete_transient('jetpack_is_single_user');
delete_site_transient('jetpack_is_single_user');
delete_transient('quadlayers_news_feed');
delete_site_transient('quadlayers_news_feed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ql_plugin_feedback_%', '_site_transient_ql_plugin_feedback_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('qligg_cron_account');


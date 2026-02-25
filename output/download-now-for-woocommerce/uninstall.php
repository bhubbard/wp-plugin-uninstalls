<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('somdn_gen_settings');
delete_site_option('somdn_gen_settings');
delete_option('somdn_single_settings');
delete_site_option('somdn_single_settings');
delete_option('somdn_multi_settings');
delete_site_option('somdn_multi_settings');
delete_option('somdn_docviewer_settings');
delete_site_option('somdn_docviewer_settings');
delete_option('somdn_pro_track_settings');
delete_site_option('somdn_pro_track_settings');
delete_option('somdn_woo_quickview_settings');
delete_site_option('somdn_woo_quickview_settings');
delete_option('somdn_owned_settings');
delete_site_option('somdn_owned_settings');
delete_option('somdn_debug_settings');
delete_site_option('somdn_debug_settings');
delete_option('divi_engine_options');
delete_site_option('divi_engine_options');
delete_option('divi_fb_license');
delete_site_option('divi_fb_license');
delete_option('wp_enhanced_licenses');
delete_site_option('wp_enhanced_licenses');
delete_option('somdn_pro_license_key');
delete_site_option('somdn_pro_license_key');
delete_option('somdn_pro_license_status');
delete_site_option('somdn_pro_license_status');
delete_option('wpe_incomplete_achievements');
delete_site_option('wpe_incomplete_achievements');
delete_option('wpe_complete_achievements');
delete_site_option('wpe_complete_achievements');
delete_option('somdn_license_migrated_to_wpe');
delete_site_option('somdn_license_migrated_to_wpe');
delete_option('somdn_stats_export_settings');
delete_site_option('somdn_stats_export_settings');
delete_option('somdn_memberships_settings');
delete_site_option('somdn_memberships_settings');
delete_option('woocommerce_file_download_method');
delete_site_option('woocommerce_file_download_method');

// Clear Cron Jobs
wp_clear_scheduled_hook('somdn_delete_download_files_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'somdn_dlcount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'somdn_dlcount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'somdn_dlcount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'somdn_dlcount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'somdn_included' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'somdn_included' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'somdn_included' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'somdn_included' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'somdn_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'somdn_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'somdn_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'somdn_product_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'somdn_user_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'somdn_user_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'somdn_user_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'somdn_user_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'somdn_download_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'somdn_download_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'somdn_download_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'somdn_download_files' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'somdn_membership_include_free_download' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'somdn_membership_include_free_download' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'somdn_membership_include_free_download' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'somdn_membership_include_free_download' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price' ) );


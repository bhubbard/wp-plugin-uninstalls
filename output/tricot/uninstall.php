<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tricot_force_default_lang_prefix');
delete_site_option('tricot_force_default_lang_prefix');
delete_option('tricot_debug_level');
delete_site_option('tricot_debug_level');
delete_option('tricot_crawl_delay');
delete_site_option('tricot_crawl_delay');
delete_option('tricot_transtation_capture');
delete_site_option('tricot_transtation_capture');
delete_option('tricot_language_switcher_options');
delete_site_option('tricot_language_switcher_options');
delete_option('tricot_license_key');
delete_site_option('tricot_license_key');
delete_option('tricot_api_key');
delete_site_option('tricot_api_key');
delete_option('tricot_automatic_options');
delete_site_option('tricot_automatic_options');
delete_option('tricot_active_languages');
delete_site_option('tricot_active_languages');
delete_option('tricot_wizard_max_step');
delete_site_option('tricot_wizard_max_step');
delete_option('tricot_crawler_current');
delete_site_option('tricot_crawler_current');
delete_option('tricot_crawler_total');
delete_site_option('tricot_crawler_total');
delete_option('tricot_crawler_running');
delete_site_option('tricot_crawler_running');
delete_option('tricot_crawler_urls');
delete_site_option('tricot_crawler_urls');
delete_option('tricot_crawler_seo');
delete_site_option('tricot_crawler_seo');
delete_option('tricot_crawler_date');
delete_site_option('tricot_crawler_date');
delete_option('tricot_registered_domain');
delete_site_option('tricot_registered_domain');
delete_option('tricot_db_version');
delete_site_option('tricot_db_version');
delete_option('tricot_plan');
delete_site_option('tricot_plan');
delete_option('tricot_credits');
delete_site_option('tricot_credits');
delete_option('tricot_license_status');
delete_site_option('tricot_license_status');
delete_option('tricot_advanced_settings');
delete_site_option('tricot_advanced_settings');
delete_option('tricot_encode_hash');
delete_site_option('tricot_encode_hash');

// Clear Cron Jobs
wp_clear_scheduled_hook('tricot_cron_indexation');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_tricot_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_tricot_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_tricot_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_tricot_display_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_tricot_menu_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_tricot_menu_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_tricot_menu_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_tricot_menu_style' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_tricot_hide_current' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_tricot_hide_current' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_tricot_hide_current' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_tricot_hide_current' ) );


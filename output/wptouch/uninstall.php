<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wptouch_customizer_options_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wptouch_customizer_initialized_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wptouch_custom_post_types');
delete_site_option('wptouch_custom_post_types');
delete_option('wptouch_multisite_active');
delete_site_option('wptouch_multisite_active');
delete_option('wptouch-disable-free-newsletter-notice');
delete_site_option('wptouch-disable-free-newsletter-notice');
delete_option('_wptouch-disable-theme-incompat-notice');
delete_site_option('_wptouch-disable-theme-incompat-notice');
delete_option('_wptouch-disable-plugin-incompat-notice');
delete_site_option('_wptouch-disable-plugin-incompat-notice');
delete_option('bnc_iphone_pages');
delete_site_option('bnc_iphone_pages');
delete_option('update_plugins');
delete_site_option('update_plugins');
delete_option('wptouch_menus_initialized');
delete_site_option('wptouch_menus_initialized');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wptouch_custom_taxonomies');
delete_site_option('wptouch_custom_taxonomies');

// Delete Transients
delete_transient('wptouch_license_upgrade_available');
delete_site_transient('wptouch_license_upgrade_available');
delete_transient('_wptouch_available_cloud_addons');
delete_site_transient('_wptouch_available_cloud_addons');
delete_transient('_wptouch_available_cloud_themes');
delete_site_transient('_wptouch_available_cloud_themes');
delete_transient('_wptouch_language_info');
delete_site_transient('_wptouch_language_info');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_wptouch_bncid_latest_version');
delete_site_transient('_wptouch_bncid_latest_version');
delete_transient('wptouch_update_info');
delete_site_transient('wptouch_update_info');
delete_transient('wptouch_multisite_site_info');
delete_site_transient('wptouch_multisite_site_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('wptouch_cron_backup_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mobile_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mobile_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mobile_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mobile_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wptouch_sc_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wptouch_sc_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wptouch_sc_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wptouch_sc_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wptouch_sc_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wptouch_sc_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wptouch_sc_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wptouch_sc_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wptouch_sc_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wptouch_sc_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wptouch_sc_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wptouch_sc_styles' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wptouch_sc_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wptouch_sc_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wptouch_sc_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wptouch_sc_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wptouch_pro_menu_item_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wptouch_pro_menu_item_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wptouch_pro_menu_item_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wptouch_pro_menu_item_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wptouch_pro_menu_item_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wptouch_pro_menu_item_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wptouch_pro_menu_item_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wptouch_pro_menu_item_disabled' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wps_bidouille_deactivate_purge');
delete_site_option('wps_bidouille_deactivate_purge');
delete_option('wps_save_settings');
delete_site_option('wps_save_settings');
delete_option('wps_white_list');
delete_site_option('wps_white_list');
delete_option('select2_wps_users');
delete_site_option('select2_wps_users');
delete_option('wps_options_tools');
delete_site_option('wps_options_tools');
delete_option('no_autoupdates_plugins');
delete_site_option('no_autoupdates_plugins');
delete_option('autoupdates_themes');
delete_site_option('autoupdates_themes');
delete_option('wps_display');
delete_site_option('wps_display');
delete_option('wps_notifs_ajax');
delete_site_option('wps_notifs_ajax');
delete_option('select2_wps_posts');
delete_site_option('select2_wps_posts');
delete_option('wps_archive_cpt_remove_from_cache');
delete_site_option('wps_archive_cpt_remove_from_cache');
delete_option('wps_cpt_remove_from_cache');
delete_site_option('wps_cpt_remove_from_cache');
delete_option('list_post_without_cache');
delete_site_option('list_post_without_cache');
delete_option('wpsbidouille_admin_footer_text_rated');
delete_site_option('wpsbidouille_admin_footer_text_rated');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('wps_old_plugin');
delete_site_transient('wps_old_plugin');
delete_transient('disable-notice-autoupdates');
delete_site_transient('disable-notice-autoupdates');
delete_transient('wps_query_themes');
delete_site_transient('wps_query_themes');
delete_transient('disable-notice-update-traduction');
delete_site_transient('disable-notice-update-traduction');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%-update', '_site_transient_%-update' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wps_certificate_ssl');
delete_site_transient('wps_certificate_ssl');
delete_transient('disable-notice-themes-inactive');
delete_site_transient('disable-notice-themes-inactive');
delete_transient('disable-notice-plugins-inactive');
delete_site_transient('disable-notice-plugins-inactive');
delete_transient('disable-notice-db-prefix');
delete_site_transient('disable-notice-db-prefix');
delete_transient('disable-notice-ssl');
delete_site_transient('disable-notice-ssl');
delete_transient('disable-notice-check-old-plugins');
delete_site_transient('disable-notice-check-old-plugins');
delete_transient('disable-notice-wordpress-update');
delete_site_transient('disable-notice-wordpress-update');
delete_transient('disable-notice-plugins-update');
delete_site_transient('disable-notice-plugins-update');
delete_transient('disable-notice-themes-update');
delete_site_transient('disable-notice-themes-update');
delete_transient('disable-notice-wps-hide-login');
delete_site_transient('disable-notice-wps-hide-login');
delete_transient('disable-notice-wps-limit-login');
delete_site_transient('disable-notice-wps-limit-login');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wps_api_plugin_information_%', '_site_transient_wps_api_plugin_information_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wps_api_category_premium_%', '_site_transient_wps_api_category_premium_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');


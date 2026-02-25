<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'shapedplugin_offer_banner_dismissed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sp_woo_quick_view_review_notice_dismiss');
delete_site_option('sp_woo_quick_view_review_notice_dismiss');
delete_option('_sp_wqvpro_options');
delete_site_option('_sp_wqvpro_options');
delete_option('woo_quick_view_version');
delete_site_option('woo_quick_view_version');
delete_option('woo_quick_view_first_version');
delete_site_option('woo_quick_view_first_version');
delete_option('woo_quick_view_activation_date');
delete_site_option('woo_quick_view_activation_date');
delete_option('woo_quick_view_db_version');
delete_site_option('woo_quick_view_db_version');
delete_option('_sp_wqv_options');
delete_site_option('_sp_wqv_options');
delete_option('shapedplugin_offer_banner_dismissed_new_year_2026');
delete_site_option('shapedplugin_offer_banner_dismissed_new_year_2026');
delete_option('shapedplugin_offer_banner_dismissed_black_friday_2025');
delete_site_option('shapedplugin_offer_banner_dismissed_black_friday_2025');

// Delete Transients
delete_transient('wooqv_plugins');
delete_site_transient('wooqv_plugins');


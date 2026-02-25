<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('siteorigin_panels_home_page_id');
delete_site_option('siteorigin_panels_home_page_id');
delete_option('acf_version');
delete_site_option('acf_version');
delete_option('rocket_lazyload_options');
delete_site_option('rocket_lazyload_options');
delete_option('siteorigin_installer_admin_dismissed');
delete_site_option('siteorigin_installer_admin_dismissed');
delete_option('siteorigin_premium_affiliate_id');
delete_site_option('siteorigin_premium_affiliate_id');
delete_option('siteorigin_installer');
delete_site_option('siteorigin_installer');
delete_option('siteorigin_panels_settings');
delete_site_option('siteorigin_panels_settings');
delete_option('siteorigin_panels_display');
delete_site_option('siteorigin_panels_display');
delete_option('siteorigin_panels_post_types');
delete_site_option('siteorigin_panels_post_types');
delete_option('siteorigin_panels_is_using_bundled');
delete_site_option('siteorigin_panels_is_using_bundled');
delete_option('siteorigin_panels_initial_version');
delete_site_option('siteorigin_panels_initial_version');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('siteorigin_panels_active_version');
delete_site_option('siteorigin_panels_active_version');

// Delete Transients
delete_transient('siteorigin_panels_widgets');
delete_site_transient('siteorigin_panels_widgets');
delete_transient('siteorigin_panels_widget_dialog_tabs');
delete_site_transient('siteorigin_panels_widget_dialog_tabs');
delete_transient('siteorigin_installer_product_data');
delete_site_transient('siteorigin_installer_product_data');
delete_transient('siteorigin_panels_layouts_directory_siteorigin_page_2');
delete_site_transient('siteorigin_panels_layouts_directory_siteorigin_page_2');
delete_transient('siteorigin_panels_activation_welcome');
delete_site_transient('siteorigin_panels_activation_welcome');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_origin_wcss:%', '_site_transient_origin_wcss:%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_origin_widgets_css_cache:%', '_site_transient_origin_widgets_css_cache:%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'panels_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'panels_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'panels_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'panels_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'so_panels_directory_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'so_panels_directory_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'so_panels_directory_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'so_panels_directory_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'so_panels_hide_post_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'so_panels_hide_post_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'so_panels_hide_post_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'so_panels_hide_post_notice' ) );


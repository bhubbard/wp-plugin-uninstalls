<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simply-static');
delete_site_option('simply-static');
delete_option('simply-static-use-single');
delete_site_option('simply-static-use-single');
delete_option('simply-static-use-build');
delete_site_option('simply-static-use-build');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'simply-static-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('simply-static-404-only');
delete_site_option('simply-static-404-only');
delete_option('fs_accounts');
delete_site_option('fs_accounts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_multisite_export_running' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_blog_exported' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_total_pages' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('simply_static_delayed_until');
delete_site_option('simply_static_delayed_until');
delete_option('simply_static_elementor_defaults_set');
delete_site_option('simply_static_elementor_defaults_set');
delete_option('elementor_meta_generator_tag');
delete_site_option('elementor_meta_generator_tag');
delete_option('elementor_css_print_method');
delete_site_option('elementor_css_print_method');
delete_option('elementor_lazy_load_background_images');
delete_site_option('elementor_lazy_load_background_images');
delete_option('elementor_element_cache_ttl');
delete_site_option('elementor_element_cache_ttl');
delete_option('elementor_experiment-e_font_icon_svg');
delete_site_option('elementor_experiment-e_font_icon_svg');
delete_option('elementor_experiment-e_optimized_markup');
delete_site_option('elementor_experiment-e_optimized_markup');
delete_option('wpseo-premium-redirects-base');
delete_site_option('wpseo-premium-redirects-base');

// Delete Transients
delete_transient('simply_static_has_build_terms');
delete_site_transient('simply_static_has_build_terms');
delete_transient('simply_static_checks');
delete_site_transient('simply_static_checks');
delete_transient('simply_static_failed_tests');
delete_site_transient('simply_static_failed_tests');

// Clear Cron Jobs
wp_clear_scheduled_hook('simply_static_site_export_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );


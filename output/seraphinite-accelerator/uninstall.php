<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seraph_secretKey');
delete_site_option('seraph_secretKey');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'seraph_accel_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('nginx_cache_path');
delete_site_option('nginx_cache_path');
delete_option('gd_system_last_cache_flush');
delete_site_option('gd_system_last_cache_flush');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tmMax' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('seraph_accel_status');
delete_site_option('seraph_accel_status');
delete_option('icl_sitepress_settings');
delete_site_option('icl_sitepress_settings');
delete_option('polylang');
delete_site_option('polylang');
delete_option('multiple-domain-domains');
delete_site_option('multiple-domain-domains');
delete_option('xts-woodmart-options');
delete_site_option('xts-woodmart-options');
delete_option('themify_data');
delete_site_option('themify_data');
delete_option('thegem_theme_options');
delete_site_option('thegem_theme_options');
delete_option('superio_theme_options');
delete_site_option('superio_theme_options');
delete_option('wp-smush-settings');
delete_site_option('wp-smush-settings');
delete_option('a3_lazy_load_global_settings');
delete_site_option('a3_lazy_load_global_settings');
delete_option('optml_settings');
delete_site_option('optml_settings');
delete_option('revslider-global-settings');
delete_site_option('revslider-global-settings');
delete_option('wpo_cache_config');
delete_site_option('wpo_cache_config');
delete_option('jetpack_active_modules');
delete_site_option('jetpack_active_modules');
delete_option('litespeed.conf.cache');
delete_site_option('litespeed.conf.cache');
delete_option('siteground_optimizer_enable_cache');
delete_site_option('siteground_optimizer_enable_cache');
delete_option('perfmatters_options');
delete_site_option('perfmatters_options');
delete_option('wbcr_clearfy_deactive_preinstall_components');
delete_site_option('wbcr_clearfy_deactive_preinstall_components');
delete_option('wbcr_clearfy_enable_cache');
delete_site_option('wbcr_clearfy_enable_cache');
delete_option('wbcr_clearfy_css_optimize');
delete_site_option('wbcr_clearfy_css_optimize');
delete_option('wbcr_clearfy_css_aggregate');
delete_site_option('wbcr_clearfy_css_aggregate');
delete_option('wbcr_clearfy_css_include_inline');
delete_site_option('wbcr_clearfy_css_include_inline');
delete_option('wbcr_clearfy_css_defer');
delete_site_option('wbcr_clearfy_css_defer');
delete_option('wbcr_clearfy_css_inline');
delete_site_option('wbcr_clearfy_css_inline');
delete_option('wbcr_clearfy_js_optimize');
delete_site_option('wbcr_clearfy_js_optimize');
delete_option('wbcr_clearfy_js_aggregate');
delete_site_option('wbcr_clearfy_js_aggregate');
delete_option('wbcr_clearfy_js_include_inline');
delete_site_option('wbcr_clearfy_js_include_inline');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_seraph_accel_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_seraph_accel_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_seraph_accel_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_seraph_accel_%' ) );


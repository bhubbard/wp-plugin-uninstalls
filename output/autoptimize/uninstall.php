<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autoptimize_html');
delete_site_option('autoptimize_html');
delete_option('autoptimize_html_keepcomments');
delete_site_option('autoptimize_html_keepcomments');
delete_option('autoptimize_html_minify_inline');
delete_site_option('autoptimize_html_minify_inline');
delete_option('autoptimize_enable_site_config');
delete_site_option('autoptimize_enable_site_config');
delete_option('autoptimize_js');
delete_site_option('autoptimize_js');
delete_option('autoptimize_js_aggregate');
delete_site_option('autoptimize_js_aggregate');
delete_option('autoptimize_js_defer_not_aggregate');
delete_site_option('autoptimize_js_defer_not_aggregate');
delete_option('autoptimize_js_defer_inline');
delete_site_option('autoptimize_js_defer_inline');
delete_option('autoptimize_js_exclude');
delete_site_option('autoptimize_js_exclude');
delete_option('autoptimize_js_trycatch');
delete_site_option('autoptimize_js_trycatch');
delete_option('autoptimize_js_justhead');
delete_site_option('autoptimize_js_justhead');
delete_option('autoptimize_js_forcehead');
delete_site_option('autoptimize_js_forcehead');
delete_option('autoptimize_js_include_inline');
delete_site_option('autoptimize_js_include_inline');
delete_option('autoptimize_css');
delete_site_option('autoptimize_css');
delete_option('autoptimize_css_aggregate');
delete_site_option('autoptimize_css_aggregate');
delete_option('autoptimize_css_exclude');
delete_site_option('autoptimize_css_exclude');
delete_option('autoptimize_css_justhead');
delete_site_option('autoptimize_css_justhead');
delete_option('autoptimize_css_datauris');
delete_site_option('autoptimize_css_datauris');
delete_option('autoptimize_css_defer');
delete_site_option('autoptimize_css_defer');
delete_option('autoptimize_css_defer_inline');
delete_site_option('autoptimize_css_defer_inline');
delete_option('autoptimize_css_inline');
delete_site_option('autoptimize_css_inline');
delete_option('autoptimize_css_include_inline');
delete_site_option('autoptimize_css_include_inline');
delete_option('autoptimize_cdn_url');
delete_site_option('autoptimize_cdn_url');
delete_option('autoptimize_cache_clean');
delete_site_option('autoptimize_cache_clean');
delete_option('autoptimize_cache_nogzip');
delete_site_option('autoptimize_cache_nogzip');
delete_option('autoptimize_optimize_logged');
delete_site_option('autoptimize_optimize_logged');
delete_option('autoptimize_optimize_checkout');
delete_site_option('autoptimize_optimize_checkout');
delete_option('autoptimize_minify_excluded');
delete_site_option('autoptimize_minify_excluded');
delete_option('autoptimize_cache_fallback');
delete_site_option('autoptimize_cache_fallback');
delete_option('autoptimize_enable_meta_ao_settings');
delete_site_option('autoptimize_enable_meta_ao_settings');
delete_option('autoptimize_installed_before_compatibility');
delete_site_option('autoptimize_installed_before_compatibility');
delete_option('autoptimize_ccss_rules');
delete_site_option('autoptimize_ccss_rules');
delete_option('autoptimize_ccss_additional');
delete_site_option('autoptimize_ccss_additional');
delete_option('autoptimize_ccss_queue');
delete_site_option('autoptimize_ccss_queue');
delete_option('autoptimize_ccss_viewport');
delete_site_option('autoptimize_ccss_viewport');
delete_option('autoptimize_ccss_finclude');
delete_site_option('autoptimize_ccss_finclude');
delete_option('autoptimize_ccss_rtimelimit');
delete_site_option('autoptimize_ccss_rtimelimit');
delete_option('autoptimize_ccss_noptimize');
delete_site_option('autoptimize_ccss_noptimize');
delete_option('autoptimize_ccss_debug');
delete_site_option('autoptimize_ccss_debug');
delete_option('autoptimize_ccss_key');
delete_site_option('autoptimize_ccss_key');
delete_option('autoptimize_ccss_keyst');
delete_site_option('autoptimize_ccss_keyst');
delete_option('autoptimize_ccss_loggedin');
delete_site_option('autoptimize_ccss_loggedin');
delete_option('autoptimize_ccss_forcepath');
delete_site_option('autoptimize_ccss_forcepath');
delete_option('autoptimize_service_availablity');
delete_site_option('autoptimize_service_availablity');
delete_option('autoptimize_ccss_deferjquery');
delete_site_option('autoptimize_ccss_deferjquery');
delete_option('autoptimize_ccss_domain');
delete_site_option('autoptimize_ccss_domain');
delete_option('autoptimize_ccss_unloadccss');
delete_site_option('autoptimize_ccss_unloadccss');
delete_option('autoptimize_ccss_version');
delete_site_option('autoptimize_ccss_version');
delete_option('autoptimize_ccss_rlimit');
delete_site_option('autoptimize_ccss_rlimit');
delete_option('autoptimize_imgopt_settings');
delete_site_option('autoptimize_imgopt_settings');
delete_option('autoptimize_extra_settings');
delete_site_option('autoptimize_extra_settings');
delete_option('autoptimize_pro_boosters');
delete_site_option('autoptimize_pro_boosters');
delete_option('autoptimize_pro_pagecache');
delete_site_option('autoptimize_pro_pagecache');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'autoptimize_ccss_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'autoptimize_js_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'autoptimize_css_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('WpFastestCache');
delete_site_option('WpFastestCache');
delete_option('siteground_optimizer_optimize_css');
delete_site_option('siteground_optimizer_optimize_css');
delete_option('siteground_optimizer_optimize_javascript');
delete_site_option('siteground_optimizer_optimize_javascript');
delete_option('siteground_optimizer_combine_javascript');
delete_site_option('siteground_optimizer_combine_javascript');
delete_option('siteground_optimizer_combine_css');
delete_site_option('siteground_optimizer_combine_css');
delete_option('wpo_minify_config');
delete_site_option('wpo_minify_config');
delete_option('autoptimize_css_nogooglefont');
delete_site_option('autoptimize_css_nogooglefont');

// Delete Transients
delete_transient('autoptimize_stats');
delete_site_transient('autoptimize_stats');
delete_transient('autoptimize_cache_warmer_protector');
delete_site_transient('autoptimize_cache_warmer_protector');
delete_transient('autoptimize_banner');
delete_site_transient('autoptimize_banner');
delete_transient('autoptimize_ccss_page_templates');
delete_site_transient('autoptimize_ccss_page_templates');
delete_transient('ao_ccss_cronwarning');
delete_site_transient('ao_ccss_cronwarning');
delete_transient('autoptimize_stale_option_buster');
delete_site_transient('autoptimize_stale_option_buster');

// Clear Cron Jobs
wp_clear_scheduled_hook('ao_ccss_queue');
wp_clear_scheduled_hook('ao_ccss_maintenance');
wp_clear_scheduled_hook('ao_ccss_keychecker');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ao_post_optimize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ao_post_optimize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ao_post_optimize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ao_post_optimize' ) );


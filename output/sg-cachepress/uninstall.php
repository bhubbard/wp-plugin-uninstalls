<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('siteground_optimizer_supercacher_permissions');
delete_site_option('siteground_optimizer_supercacher_permissions');
delete_option('siteground_optimizer_frontend_permissions');
delete_site_option('siteground_optimizer_frontend_permissions');
delete_option('siteground_optimizer_images_permissions');
delete_site_option('siteground_optimizer_images_permissions');
delete_option('siteground_optimizer_environment_permissions');
delete_site_option('siteground_optimizer_environment_permissions');
delete_option('siteground_optimizer_memcache_notice');
delete_site_option('siteground_optimizer_memcache_notice');
delete_option('siteground_optimizer_blocking_plugins_notice');
delete_site_option('siteground_optimizer_blocking_plugins_notice');
delete_option('siteground_optimizer_cache_plugins_notice');
delete_site_option('siteground_optimizer_cache_plugins_notice');
delete_option('siteground_optimizer_memcache_crashed');
delete_site_option('siteground_optimizer_memcache_crashed');
delete_option('siteground_optimizer_update_timestamp');
delete_site_option('siteground_optimizer_update_timestamp');
delete_option('siteground_data_consent');
delete_site_option('siteground_data_consent');
delete_option('siteground_email_consent');
delete_site_option('siteground_email_consent');
delete_option('siteground_settings_optimizer');
delete_site_option('siteground_settings_optimizer');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sgo_speed_test_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sgo_pre_migration_speed_test');
delete_site_option('sgo_pre_migration_speed_test');
delete_option('siteground_optimizer_campaign_steps');
delete_site_option('siteground_optimizer_campaign_steps');
delete_option('sg_security_weekly_email_timestamp');
delete_site_option('sg_security_weekly_email_timestamp');
delete_option('sgo_campaign_cron_timestamp');
delete_site_option('sgo_campaign_cron_timestamp');
delete_option('siteground_optimizer_current_version');
delete_site_option('siteground_optimizer_current_version');
delete_option('siteground_optimizer_dns_prefetch_urls');
delete_site_option('siteground_optimizer_dns_prefetch_urls');
delete_option('siteground_optimizer_database_optimization');
delete_site_option('siteground_optimizer_database_optimization');
delete_option('siteground_optimizer_compression_level_old');
delete_site_option('siteground_optimizer_compression_level_old');
delete_option('siteground_optimizer_compression_level');
delete_site_option('siteground_optimizer_compression_level');
delete_option('siteground_optimizer_combine_css_exclude');
delete_site_option('siteground_optimizer_combine_css_exclude');
delete_option('siteground_optimizer_fonts_preload_urls');
delete_site_option('siteground_optimizer_fonts_preload_urls');
delete_option('siteground_optimizer_combine_javascript_exclude');
delete_site_option('siteground_optimizer_combine_javascript_exclude');
delete_option('siteground_optimizer_logged_in_cache');
delete_site_option('siteground_optimizer_logged_in_cache');
delete_option('siteground_optimizer_file_cache_secret');
delete_site_option('siteground_optimizer_file_cache_secret');
delete_option('siteground_optimizer_file_caching_interval_cleanup');
delete_site_option('siteground_optimizer_file_caching_interval_cleanup');
delete_option('sg_file_cache_dirsize');
delete_site_option('sg_file_cache_dirsize');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('sgo_file_caching_dropin_failed');
delete_site_option('sgo_file_caching_dropin_failed');
delete_option('siteground_optimizer_file_caching');
delete_site_option('siteground_optimizer_file_caching');
delete_option('siteground_optimizer_async_javascript_exclude');
delete_site_option('siteground_optimizer_async_javascript_exclude');
delete_option('siteground_optimizer_heartbeat_post_interval');
delete_site_option('siteground_optimizer_heartbeat_post_interval');
delete_option('siteground_optimizer_heartbeat_dashboard_interval');
delete_site_option('siteground_optimizer_heartbeat_dashboard_interval');
delete_option('siteground_optimizer_heartbeat_frontend_interval');
delete_site_option('siteground_optimizer_heartbeat_frontend_interval');
delete_option('siteground_optimizer_smart_cache_purge_queue');
delete_site_option('siteground_optimizer_smart_cache_purge_queue');
delete_option('siteground_optimizer_overwrite_custom');
delete_site_option('siteground_optimizer_overwrite_custom');
delete_option('siteground_optimizer_resize_images');
delete_site_option('siteground_optimizer_resize_images');
delete_option('disable_conflicting_modules');
delete_site_option('disable_conflicting_modules');
delete_option('siteground_optimizer_default_ssl_enabled');
delete_site_option('siteground_optimizer_default_ssl_enabled');
delete_option('sg_cachepress');
delete_site_option('sg_cachepress');
delete_option('SGCP_Use_SG_Cache');
delete_site_option('SGCP_Use_SG_Cache');
delete_option('SGCP_Autoflush');
delete_site_option('SGCP_Autoflush');
delete_option('SGCP_Memcached');
delete_site_option('SGCP_Memcached');
delete_option('SGCP_ShowNotice');
delete_site_option('SGCP_ShowNotice');
delete_option('SGCP_IsNginx');
delete_site_option('SGCP_IsNginx');
delete_option('SGCP_CheckedNginx');
delete_site_option('SGCP_CheckedNginx');
delete_option('SGCP_FristRun');
delete_site_option('SGCP_FristRun');
delete_option('SGCP_LastFail');
delete_site_option('SGCP_LastFail');
delete_option('sg_cachepress_ssl_enabled');
delete_site_option('sg_cachepress_ssl_enabled');
delete_option('siteground_optimizer_optimize_html');
delete_site_option('siteground_optimizer_optimize_html');
delete_option('siteground_optimizer_optimize_javascript');
delete_site_option('siteground_optimizer_optimize_javascript');
delete_option('siteground_optimizer_optimize_javascript_async');
delete_site_option('siteground_optimizer_optimize_javascript_async');
delete_option('siteground_optimizer_optimize_css');
delete_site_option('siteground_optimizer_optimize_css');
delete_option('siteground_optimizer_combine_css');
delete_site_option('siteground_optimizer_combine_css');
delete_option('siteground_optimizer_remove_query_strings');
delete_site_option('siteground_optimizer_remove_query_strings');
delete_option('siteground_optimizer_disable_emojis');
delete_site_option('siteground_optimizer_disable_emojis');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'siteground_optimizer_default_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('siteground_optimizer_excluded_urls');
delete_site_option('siteground_optimizer_excluded_urls');
delete_option('siteground_optimizer_enable_gzip_compression');
delete_site_option('siteground_optimizer_enable_gzip_compression');
delete_option('siteground_optimizer_enable_browser_caching');
delete_site_option('siteground_optimizer_enable_browser_caching');
delete_option('siteground_optimizer_phpcompat_status');
delete_site_option('siteground_optimizer_phpcompat_status');
delete_option('siteground_optimizer_phpcompat_progress');
delete_site_option('siteground_optimizer_phpcompat_progress');
delete_option('siteground_optimizer_phpcompat_is_compatible');
delete_site_option('siteground_optimizer_phpcompat_is_compatible');
delete_option('siteground_optimizer_phpcompat_result');
delete_site_option('siteground_optimizer_phpcompat_result');
delete_option('siteground_optimizer_image_optimization_completed');
delete_site_option('siteground_optimizer_image_optimization_completed');
delete_option('siteground_optimizer_image_optimization_lock');
delete_site_option('siteground_optimizer_image_optimization_lock');
delete_option('siteground_optimizer_lock');
delete_site_option('siteground_optimizer_lock');
delete_option('siteground_optimizer_excluded_lazy_load_classes');
delete_site_option('siteground_optimizer_excluded_lazy_load_classes');
delete_option('siteground_optimizer_whats_new');
delete_site_option('siteground_optimizer_whats_new');
delete_option('siteground_optimizer_quality_webp');
delete_site_option('siteground_optimizer_quality_webp');
delete_option('siteground_optimizer_quality_type');
delete_site_option('siteground_optimizer_quality_type');
delete_option('siteground_optimizer_optimize_web_fonts');
delete_site_option('siteground_optimizer_optimize_web_fonts');
delete_option('siteground_optimizer_enable_cache');
delete_site_option('siteground_optimizer_enable_cache');
delete_option('siteground_optimizer_autoflush_cache');
delete_site_option('siteground_optimizer_autoflush_cache');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%heartbeat_control' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%heartbeat_post_interval' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%heartbeat_dashboard_interval' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%heartbeat_frontend_interval' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%excluded_lazy_load_media_types' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('siteground_settings_optimizer_hello');
delete_site_option('siteground_settings_optimizer_hello');
delete_option('sgo_install_7_4_0');
delete_site_option('sgo_install_7_4_0');
delete_option('siteground_optimizer_performace_receipient');
delete_site_option('siteground_optimizer_performace_receipient');
delete_option('siteground_optimizer_version');
delete_site_option('siteground_optimizer_version');
delete_option('siteground_optimizer_excluded_lazy_load_media_types');
delete_site_option('siteground_optimizer_excluded_lazy_load_media_types');
delete_option('siteground_optimizer_minify_javascript_exclude');
delete_site_option('siteground_optimizer_minify_javascript_exclude');
delete_option('siteground_optimizer_minify_css_exclude');
delete_site_option('siteground_optimizer_minify_css_exclude');
delete_option('siteground_optimizer_minify_html_exclude');
delete_site_option('siteground_optimizer_minify_html_exclude');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('siteground_optimizer_analytics_permissions');
delete_site_option('siteground_optimizer_analytics_permissions');
delete_option('siteground_optimizer_enable_memcached');
delete_site_option('siteground_optimizer_enable_memcached');
delete_option('siteground_optimizer_ssl_enabled');
delete_site_option('siteground_optimizer_ssl_enabled');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('siteground_optimizer_preheat_cache');
delete_site_option('siteground_optimizer_preheat_cache');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'siteground_optimizer_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('siteground_optimizer_hide_rating');
delete_site_option('siteground_optimizer_hide_rating');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_interval' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('siteground_optimizer_backup_media');
delete_site_option('siteground_optimizer_backup_media');
delete_option('siteground_optimizer_compress_existing');
delete_site_option('siteground_optimizer_compress_existing');
delete_option('siteground_optimizer_total_unoptimized_images');
delete_site_option('siteground_optimizer_total_unoptimized_images');
delete_option('siteground_optimizer_image_optimization_status');
delete_site_option('siteground_optimizer_image_optimization_status');
delete_option('siteground_optimizer_image_optimization_stopped');
delete_site_option('siteground_optimizer_image_optimization_stopped');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%post_types_exclude' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%excluded_urls' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%database_optimization' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%minify_html_exclude' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%fonts_preload_urls' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%dns_prefetch_urls' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%excluded_lazy_load_classes' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('siteground_optimizer_webp_support');
delete_site_option('siteground_optimizer_webp_support');
delete_option('siteground_optimizer_webp_conversion_completed');
delete_site_option('siteground_optimizer_webp_conversion_completed');
delete_option('siteground_optimizer_total_non_converted_images');
delete_site_option('siteground_optimizer_total_non_converted_images');
delete_option('siteground_optimizer_webp_conversion_status');
delete_site_option('siteground_optimizer_webp_conversion_status');
delete_option('siteground_optimizer_webp_conversion_lock');
delete_site_option('siteground_optimizer_webp_conversion_lock');
delete_option('siteground_optimizer_user_agent_header');
delete_site_option('siteground_optimizer_user_agent_header');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_timestamp' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sgo_image_optimization_token_%', '_site_transient_sgo_image_optimization_token_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('_siteground_optimizer_installing');
delete_site_transient('_siteground_optimizer_installing');
delete_transient('wc_attribute_taxonomies');
delete_site_transient('wc_attribute_taxonomies');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('sgs_email_cron');
wp_clear_scheduled_hook('siteground_optimizer_database_optimization_cron');
wp_clear_scheduled_hook('siteground_optimizer_performance_report_cron');
wp_clear_scheduled_hook('siteground_optimizer_cache_preheat');
wp_clear_scheduled_hook('siteground_optimizer_clear_cache_dir');
wp_clear_scheduled_hook('siteground_optimizer_purge_cron_cache');
wp_clear_scheduled_hook('siteground_optimizer_start_test_cron');
wp_clear_scheduled_hook('siteground_optimizer_start_image_optimization_cron');
wp_clear_scheduled_hook('siteground_optimizer_check_assets_dir');
wp_clear_scheduled_hook('siteground_delete_assets');
wp_clear_scheduled_hook('sgo_campaign_cron');
wp_clear_scheduled_hook('siteground_optimizer_start_webp_conversion_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'siteground_optimizer_compression_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'siteground_optimizer_compression_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'siteground_optimizer_compression_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'siteground_optimizer_compression_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'siteground_optimizer_optimization_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'siteground_optimizer_optimization_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'siteground_optimizer_optimization_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'siteground_optimizer_optimization_failed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'siteground_optimizer_original_filesize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'siteground_optimizer_original_filesize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'siteground_optimizer_original_filesize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'siteground_optimizer_original_filesize' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'siteground_optimizer_is_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'siteground_optimizer_is_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'siteground_optimizer_is_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'siteground_optimizer_is_optimized' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'siteground_optimizer_is_converted_to_webp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'siteground_optimizer_is_converted_to_webp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'siteground_optimizer_is_converted_to_webp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'siteground_optimizer_is_converted_to_webp' ) );


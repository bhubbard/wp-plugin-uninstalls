<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('swift_performance_rewrites');
delete_site_option('swift_performance_rewrites');
delete_option('swift-performance-developer-mode');
delete_site_option('swift-performance-developer-mode');
delete_option('cron');
delete_site_option('cron');
delete_option('swift_performance_options');
delete_site_option('swift_performance_options');
delete_option('swift_performance_preview');
delete_site_option('swift_performance_preview');
delete_option('swift_performance_messages');
delete_site_option('swift_performance_messages');
delete_option('swift-performance-license');
delete_site_option('swift-performance-license');
delete_option('swift_performance_autocomplete');
delete_site_option('swift_performance_autocomplete');
delete_option('sg_cachepress');
delete_site_option('sg_cachepress');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%user_roles' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('swift-perforomance-initial-setup-wizard');
delete_site_option('swift-perforomance-initial-setup-wizard');
delete_option('swift-performance-deactivation-settings');
delete_site_option('swift-performance-deactivation-settings');
delete_option('swift_performance_timeout');
delete_site_option('swift_performance_timeout');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('swift_performance_lazyload_buffer');
delete_site_option('swift_performance_lazyload_buffer');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%image_optimizer_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('swift_performance_plugin_organizer');
delete_site_option('swift_performance_plugin_organizer');
delete_option('swift_performance_options-transients');
delete_site_option('swift_performance_options-transients');
delete_option('swift-perforomance-critical-font');
delete_site_option('swift-perforomance-critical-font');
delete_option('external_updates-swift-performance');
delete_site_option('external_updates-swift-performance');

// Delete Transients
delete_transient('swift_performance_initial_prebuild_links');
delete_site_transient('swift_performance_initial_prebuild_links');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_swift_performance_dynamic_%', '_site_transient_swift_performance_dynamic_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_swift_performance_ajax_%', '_site_transient_swift_performance_ajax_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('swift_performance_prebuild_cache_hit');
delete_site_transient('swift_performance_prebuild_cache_hit');
delete_transient('swift_performance_prebuild_cache_pid');
delete_site_transient('swift_performance_prebuild_cache_pid');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_swift_performance_prebuild_booster_%', '_site_transient_swift_performance_prebuild_booster_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('swiftperformance_bmpromo');
delete_site_transient('swiftperformance_bmpromo');
delete_transient('swift_performance_timeout_test_pid');
delete_site_transient('swift_performance_timeout_test_pid');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_swift_performance_is_identical_%', '_site_transient_swift_performance_is_identical_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_cf_zones', '_site_transient_%_cf_zones' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('swift_performance_image_optimizer_pid');
delete_site_transient('swift_performance_image_optimizer_pid');
delete_transient('swift_image_optimizer_load_images');
delete_site_transient('swift_image_optimizer_load_images');
delete_transient('swift-performance-setup');
delete_site_transient('swift-performance-setup');
delete_transient('swift_performance_activate_notice');
delete_site_transient('swift_performance_activate_notice');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('swift_performance_prebuild_cache');
wp_clear_scheduled_hook('swift_performance_timeout_test');
wp_clear_scheduled_hook('swift_performance_prebuild_page_cache');
wp_clear_scheduled_hook('swift_performance_process_optimize_image_queue');
wp_clear_scheduled_hook('swift_performance_load_images');
wp_clear_scheduled_hook('swift_performance_collect_anonymized_data');
wp_clear_scheduled_hook('swift_performance_api_messages');
wp_clear_scheduled_hook('swift_performance_clear_short_lifespan');
wp_clear_scheduled_hook('swift_performance_clear_expired');
wp_clear_scheduled_hook('swift_performance_clear_assets_proxy_cache');
wp_clear_scheduled_hook('swift_performance_early_loader');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'swift_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'swift_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'swift_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'swift_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'swift_performance_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'swift_performance_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'swift_performance_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'swift_performance_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'swift_include_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'swift_include_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'swift_include_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'swift_include_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );


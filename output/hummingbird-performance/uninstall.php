<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wphb-cloudflare-dash-notice');
delete_site_option('wphb-cloudflare-dash-notice');
delete_option('wphb-notice-minification-optimized-show');
delete_site_option('wphb-notice-minification-optimized-show');
delete_option('wphb_run_onboarding');
delete_site_option('wphb_run_onboarding');
delete_option('wphb_hide_ao_menu_status_animation');
delete_site_option('wphb_hide_ao_menu_status_animation');
delete_option('wphb-preset_configs');
delete_site_option('wphb-preset_configs');
delete_option('wphb-minification-show-config_modal');
delete_site_option('wphb-minification-show-config_modal');
delete_option('wphb-minification-show-advanced_modal');
delete_site_option('wphb-minification-show-advanced_modal');
delete_option('wphb-hide-tutorials');
delete_site_option('wphb-hide-tutorials');
delete_option('wphb-notice-cache-cleaned-show');
delete_site_option('wphb-notice-cache-cleaned-show');
delete_option('wphb-notice-cache-global-cleared-show');
delete_site_option('wphb-notice-cache-global-cleared-show');
delete_option('wphb-notice-free-rated-later_date');
delete_site_option('wphb-notice-free-rated-later_date');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-show' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wphb_do_minification_upgrade');
delete_site_option('wphb_do_minification_upgrade');
delete_option('wphb_show_upgrade_summary');
delete_site_option('wphb_show_upgrade_summary');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wphb-notice-legacy-critical-css-show');
delete_site_option('wphb-notice-legacy-critical-css-show');
delete_option('wphb-notice-free-deactivated-show');
delete_site_option('wphb-notice-free-deactivated-show');
delete_option('wphb-notice-free-rated-last-score');
delete_site_option('wphb-notice-free-rated-last-score');
delete_option('wp-smush-networkwide');
delete_site_option('wp-smush-networkwide');
delete_option('wphb_compression_type');
delete_site_option('wphb_compression_type');
delete_option('smush_global_stats');
delete_site_option('smush_global_stats');
delete_option('wphb-notice-free-rated-show');
delete_site_option('wphb-notice-free-rated-show');
delete_option('wphb_show_connected_modal');
delete_site_option('wphb_show_connected_modal');
delete_option('wphb_version');
delete_site_option('wphb_version');
delete_option('wphb-notice-uptime-info-show');
delete_site_option('wphb-notice-uptime-info-show');
delete_option('wphb-notice-connect-for-site-monitoring-show');
delete_site_option('wphb-notice-connect-for-site-monitoring-show');
delete_option('wphb_settings');
delete_site_option('wphb_settings');
delete_option('wphb-track-plugin-activation');
delete_site_option('wphb-track-plugin-activation');
delete_option('wphb-caching-data');
delete_site_option('wphb-caching-data');
delete_option('wp-smush-show-black-friday');
delete_site_option('wp-smush-show-black-friday');
delete_option('wphb-new-user-tour');
delete_site_option('wphb-new-user-tour');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpmudev_apikey');
delete_site_option('wpmudev_apikey');
delete_option('allowedthemes');
delete_site_option('allowedthemes');
delete_option('elementor_css_print_method');
delete_site_option('elementor_css_print_method');
delete_option('wphb_critical_css_log');
delete_site_option('wphb_critical_css_log');
delete_option('wphb_process_queue');
delete_site_option('wphb_process_queue');
delete_option('wphb-minification-files-scanned');
delete_site_option('wphb-minification-files-scanned');
delete_option('wphb_plugin_timestamps');
delete_site_option('wphb_plugin_timestamps');
delete_option('_transient_timeout_wphb-minify-server-errors');
delete_site_option('_transient_timeout_wphb-minify-server-errors');
delete_option('wphb-minification-errors');
delete_site_option('wphb-minification-errors');
delete_option('wphb-minify-server-errors');
delete_site_option('wphb-minify-server-errors');
delete_option('wp-smush-settings');
delete_site_option('wp-smush-settings');
delete_option('wphb-last-report');
delete_site_option('wphb-last-report');
delete_option('wphb-gzip-data');
delete_site_option('wphb-gzip-data');
delete_option('wphb_cs_process_queue');
delete_site_option('wphb_cs_process_queue');

// Delete Transients
delete_transient('wphb-doing-report');
delete_site_transient('wphb-doing-report');
delete_transient('wphb_infinite_loop_warning');
delete_site_transient('wphb_infinite_loop_warning');
delete_transient('wphb-processing');
delete_site_transient('wphb-processing');
delete_transient('wphb-notice-ao-scan-completion-show');
delete_site_transient('wphb-notice-ao-scan-completion-show');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wphb-separate-comments');
delete_site_transient('wphb-separate-comments');
delete_transient('wphb-uptime-last-report');
delete_site_transient('wphb-uptime-last-report');
delete_transient('wphb-uptime-remotely-enabled');
delete_site_transient('wphb-uptime-remotely-enabled');
delete_transient('wphb-minify-server-errors');
delete_site_transient('wphb-minify-server-errors');
delete_transient('wphb_cron_limit');
delete_site_transient('wphb_cron_limit');
delete_transient('wphb-fast-cgi-enabled');
delete_site_transient('wphb-fast-cgi-enabled');
delete_transient('wphb_critical_css_log');
delete_site_transient('wphb_critical_css_log');
delete_transient('wphb-cs-processing');
delete_site_transient('wphb-cs-processing');

// Clear Cron Jobs
wp_clear_scheduled_hook('wphb_performance_report');
wp_clear_scheduled_hook('wphb_uptime_report');
wp_clear_scheduled_hook('wphb_database_report');
wp_clear_scheduled_hook('wphb_minify_clear_files');
wp_clear_scheduled_hook('wphb_clear_logs');
wp_clear_scheduled_hook('wphb_database_cleanup');
wp_clear_scheduled_hook('wphb_hummingbird_cleanup');
wp_clear_scheduled_hook('wphb_cs_process_queue_cron');
wp_clear_scheduled_hook('wphb_cs_ping_queue_cron');
wp_clear_scheduled_hook('wphb_get_delay_js_exclusion');
wp_clear_scheduled_hook('wphb_load_exclusion_list_schedule_single_event');
wp_clear_scheduled_hook('wphb_minify_process_queue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%-dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_handle_versions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_handle_versions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_handle_versions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_handle_versions' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_clean_on_deletion' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_google_font_list' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_style_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpps_search_page_content_type');
delete_site_option('wpps_search_page_content_type');
delete_option('wp_predictive_search_just_confirm');
delete_site_option('wp_predictive_search_just_confirm');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpps_search_exclude_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpps_search_schedule_time_sync_data');
delete_site_option('wpps_search_schedule_time_sync_data');
delete_option('wp_predictive_search_had_sync_posts_data');
delete_site_option('wp_predictive_search_had_sync_posts_data');
delete_option('wp_predictive_search_synced_posts_data');
delete_site_option('wp_predictive_search_synced_posts_data');
delete_option('wp_predictive_search_auto_synced_completed_time');
delete_site_option('wp_predictive_search_auto_synced_completed_time');
delete_option('wp_predictive_search_manual_synced_completed_time');
delete_site_option('wp_predictive_search_manual_synced_completed_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_successed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_predictive_search_auto_synced_relationships_successed');
delete_site_option('wp_predictive_search_auto_synced_relationships_successed');
delete_option('wpps_min_characters_message_dontshow');
delete_site_option('wpps_min_characters_message_dontshow');
delete_option('wpps_time_delay_message_dontshow');
delete_site_option('wpps_time_delay_message_dontshow');
delete_option('wpps_cache_timeout_message_dontshow');
delete_site_option('wpps_cache_timeout_message_dontshow');
delete_option('predictive_search_category_cache');
delete_site_option('predictive_search_category_cache');
delete_option('wpps_search_box_text');
delete_site_option('wpps_search_box_text');
delete_option('wpps_search_lite_clean_on_deletion');
delete_site_option('wpps_search_lite_clean_on_deletion');
delete_option('wp_predictive_search_version');
delete_site_option('wp_predictive_search_version');
delete_option('wp_predictive_search_just_installed');
delete_site_option('wp_predictive_search_just_installed');
delete_option('wpps_search_widget_template');
delete_site_option('wpps_search_widget_template');
delete_option('wpps_search_show_catdropdown');
delete_site_option('wpps_search_show_catdropdown');
delete_option('wpps_search_in_taxonomy');
delete_site_option('wpps_search_in_taxonomy');
delete_option('wpps_search_show_image');
delete_site_option('wpps_search_show_image');
delete_option('wpps_search_show_desc');
delete_site_option('wpps_search_show_desc');
delete_option('wpps_search_character_max');
delete_site_option('wpps_search_character_max');
delete_option('wpps_search_show_in_cat');
delete_site_option('wpps_search_show_in_cat');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_items' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpps_blocks_unavailable_dismiss');
delete_site_option('wpps_blocks_unavailable_dismiss');
delete_option('wpps_search_is_debug');
delete_site_option('wpps_search_is_debug');
delete_option('wpps_search_min_characters');
delete_site_option('wpps_search_min_characters');
delete_option('wpps_search_delay_time');
delete_site_option('wpps_search_delay_time');
delete_option('wpps_search_cache_timeout');
delete_site_option('wpps_search_cache_timeout');
delete_option('wpps_search_focus_enable');
delete_site_option('wpps_search_focus_enable');
delete_option('wpps_search_focus_plugin');
delete_site_option('wpps_search_focus_plugin');
delete_option('wpps_all_results_pages_settings');
delete_site_option('wpps_all_results_pages_settings');
delete_option('predictive_search_rebuild_cat_cache');
delete_site_option('predictive_search_rebuild_cat_cache');
delete_option('wpps_search_category_cache_timeout');
delete_site_option('wpps_search_category_cache_timeout');
delete_option('wpps_search_page_id');
delete_site_option('wpps_search_page_id');
delete_option('predictive_search_mode');
delete_site_option('predictive_search_mode');
delete_option('predictive_search_description_source');
delete_site_option('predictive_search_description_source');
delete_option('wpps_search_remove_special_character');
delete_site_option('wpps_search_remove_special_character');
delete_option('wpps_search_special_characters');
delete_site_option('wpps_search_special_characters');
delete_option('wpps_search_replace_special_character');
delete_site_option('wpps_search_replace_special_character');
delete_option('wpps_search_enable_google_analytic');
delete_site_option('wpps_search_enable_google_analytic');
delete_option('wpps_search_google_analytic_id');
delete_site_option('wpps_search_google_analytic_id');
delete_option('wpps_search_google_analytic_query_parameter');
delete_site_option('wpps_search_google_analytic_query_parameter');
delete_option('wpps_search_allow_auto_sync_data');
delete_site_option('wpps_search_allow_auto_sync_data');
delete_option('wp_predictive_search_auto_synced_full_data_successed');
delete_site_option('wp_predictive_search_auto_synced_full_data_successed');
delete_option('wp_predictive_search_auto_synced_posts_successed');
delete_site_option('wp_predictive_search_auto_synced_posts_successed');
delete_option('wp_predictive_search_current_post_type_is_syncing');
delete_site_option('wp_predictive_search_current_post_type_is_syncing');
delete_option('wp_predictive_search_auto_synced_custom_types_successed');
delete_site_option('wp_predictive_search_auto_synced_custom_types_successed');
delete_option('wp_predictive_search_auto_synced_taxonomy_successed');
delete_site_option('wp_predictive_search_auto_synced_taxonomy_successed');
delete_option('wpps_search_schedule_success_recipients');
delete_site_option('wpps_search_schedule_success_recipients');
delete_option('wpps_search_schedule_error_recipients');
delete_site_option('wpps_search_schedule_error_recipients');
delete_option('wpps_upgraded_to_new_sync_data');
delete_site_option('wpps_upgraded_to_new_sync_data');
delete_option('wp_predictive_search_lite_version');
delete_site_option('wp_predictive_search_lite_version');
delete_option('wp_predictive_search_sidebar_template_settings');
delete_site_option('wp_predictive_search_sidebar_template_settings');
delete_option('wp_predictive_search_header_template_settings');
delete_site_option('wp_predictive_search_header_template_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'predictive_search_have_cat_cache%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_status', '_site_transient_%_status' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wp_predictive_search_starting_manual_sync');
delete_site_transient('wp_predictive_search_starting_manual_sync');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_predictive_search_sync_data_scheduled_jobs');
wp_clear_scheduled_hook('wp_predictive_search_auto_preload_cache_event');
wp_clear_scheduled_hook('wp_predictive_search_auto_sync_posts');
wp_clear_scheduled_hook('wp_predictive_search_auto_sync_detect_error');
wp_clear_scheduled_hook('wp_predictive_search_auto_sync_custom_types');
wp_clear_scheduled_hook('wp_predictive_search_auto_sync_taxonomy');
wp_clear_scheduled_hook('wp_predictive_search_auto_sync_relationships');
wp_clear_scheduled_hook('wp_predictive_search_auto_end_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aioseop_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aioseop_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aioseop_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aioseop_keywords' ) );


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
delete_option('woocommerce_search_result_grid_container_class');
delete_site_option('woocommerce_search_result_grid_container_class');
delete_option('wc_predictive_search_just_confirm');
delete_site_option('wc_predictive_search_just_confirm');
delete_option('woocommerce_search_exclude_products');
delete_site_option('woocommerce_search_exclude_products');
delete_option('woocommerce_search_exclude_posts');
delete_site_option('woocommerce_search_exclude_posts');
delete_option('woocommerce_search_exclude_pages');
delete_site_option('woocommerce_search_exclude_pages');
delete_option('woocommerce_search_schedule_time_sync_data');
delete_site_option('woocommerce_search_schedule_time_sync_data');
delete_option('wc_predictive_search_had_sync_posts_data');
delete_site_option('wc_predictive_search_had_sync_posts_data');
delete_option('wc_predictive_search_synced_posts_data');
delete_site_option('wc_predictive_search_synced_posts_data');
delete_option('wc_predictive_search_auto_synced_completed_time');
delete_site_option('wc_predictive_search_auto_synced_completed_time');
delete_option('wc_predictive_search_manual_synced_completed_time');
delete_site_option('wc_predictive_search_manual_synced_completed_time');
delete_option('wc_predictive_search_auto_synced_products_successed');
delete_site_option('wc_predictive_search_auto_synced_products_successed');
delete_option('wc_predictive_search_auto_synced_posts_successed');
delete_site_option('wc_predictive_search_auto_synced_posts_successed');
delete_option('wc_predictive_search_auto_synced_pages_successed');
delete_site_option('wc_predictive_search_auto_synced_pages_successed');
delete_option('woocommerce_search_box_text');
delete_site_option('woocommerce_search_box_text');
delete_option('wc_predictive_search_lite_version');
delete_site_option('wc_predictive_search_lite_version');
delete_option('wc_predictive_search_just_installed');
delete_site_option('wc_predictive_search_just_installed');
delete_option('wc_ps_upgraded_to_new_sync_data');
delete_site_option('wc_ps_upgraded_to_new_sync_data');
delete_option('woocommerce_search_result_items');
delete_site_option('woocommerce_search_result_items');
delete_option('woocommerce_search_is_debug');
delete_site_option('woocommerce_search_is_debug');
delete_option('woocommerce_search_result_display_type');
delete_site_option('woocommerce_search_result_display_type');
delete_option('predictive_search_mode');
delete_site_option('predictive_search_mode');
delete_option('woocommerce_search_remove_special_character');
delete_site_option('woocommerce_search_remove_special_character');
delete_option('woocommerce_search_special_characters');
delete_site_option('woocommerce_search_special_characters');
delete_option('woocommerce_search_replace_special_character');
delete_site_option('woocommerce_search_replace_special_character');
delete_option('woocommerce_search_allow_auto_sync_data');
delete_site_option('woocommerce_search_allow_auto_sync_data');
delete_option('wc_predictive_search_auto_synced_full_data_successed');
delete_site_option('wc_predictive_search_auto_synced_full_data_successed');
delete_option('wc_predictive_search_auto_synced_posts_table_successed');
delete_site_option('wc_predictive_search_auto_synced_posts_table_successed');
delete_option('wc_predictive_search_auto_synced_skus_successed');
delete_site_option('wc_predictive_search_auto_synced_skus_successed');
delete_option('woocommerce_search_schedule_success_recipients');
delete_site_option('woocommerce_search_schedule_success_recipients');
delete_option('woocommerce_search_schedule_error_recipients');
delete_site_option('woocommerce_search_schedule_error_recipients');
delete_option('wc_predictive_search_auto_synced_product_categories_successed');
delete_site_option('wc_predictive_search_auto_synced_product_categories_successed');
delete_option('wc_predictive_search_auto_synced_product_tags_successed');
delete_site_option('wc_predictive_search_auto_synced_product_tags_successed');
delete_option('wc_predictive_search_auto_synced_relationships_successed');
delete_site_option('wc_predictive_search_auto_synced_relationships_successed');
delete_option('wc_predictive_search_sidebar_template_settings');
delete_site_option('wc_predictive_search_sidebar_template_settings');
delete_option('wc_predictive_search_header_template_settings');
delete_site_option('wc_predictive_search_header_template_settings');
delete_option('woocommerce_search_exclude_out_stock');
delete_site_option('woocommerce_search_exclude_out_stock');
delete_option('woocommerce_search_sku_enable');
delete_site_option('woocommerce_search_sku_enable');
delete_option('woocommerce_search_price_enable');
delete_site_option('woocommerce_search_price_enable');
delete_option('woocommerce_search_addtocart_enable');
delete_site_option('woocommerce_search_addtocart_enable');
delete_option('woocommerce_search_categories_enable');
delete_site_option('woocommerce_search_categories_enable');
delete_option('woocommerce_search_tags_enable');
delete_site_option('woocommerce_search_tags_enable');
delete_option('woocommerce_search_text_lenght');
delete_site_option('woocommerce_search_text_lenght');
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('woocommerce_search_cache_timeout');
delete_site_option('woocommerce_search_cache_timeout');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_google_api_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_toggle_box_open' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-custom-boxes' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_search_page_id');
delete_site_option('woocommerce_search_page_id');
delete_option('woocommerce_search_exclude_p_categories');
delete_site_option('woocommerce_search_exclude_p_categories');
delete_option('woocommerce_search_exclude_p_tags');
delete_site_option('woocommerce_search_exclude_p_tags');
delete_option('woocommerce_search_focus_enable');
delete_site_option('woocommerce_search_focus_enable');
delete_option('woocommerce_search_focus_plugin');
delete_site_option('woocommerce_search_focus_plugin');
delete_option('woocommerce_search_product_items');
delete_site_option('woocommerce_search_product_items');
delete_option('woocommerce_search_p_sku_items');
delete_site_option('woocommerce_search_p_sku_items');
delete_option('woocommerce_search_p_cat_items');
delete_site_option('woocommerce_search_p_cat_items');
delete_option('woocommerce_search_p_tag_items');
delete_site_option('woocommerce_search_p_tag_items');
delete_option('woocommerce_search_post_items');
delete_site_option('woocommerce_search_post_items');
delete_option('woocommerce_search_page_items');
delete_site_option('woocommerce_search_page_items');
delete_option('woocommerce_search_character_max');
delete_site_option('woocommerce_search_character_max');
delete_option('woocommerce_search_width');
delete_site_option('woocommerce_search_width');
delete_option('woocommerce_search_padding_top');
delete_site_option('woocommerce_search_padding_top');
delete_option('woocommerce_search_padding_bottom');
delete_site_option('woocommerce_search_padding_bottom');
delete_option('woocommerce_search_padding_left');
delete_site_option('woocommerce_search_padding_left');
delete_option('woocommerce_search_padding_right');
delete_site_option('woocommerce_search_padding_right');
delete_option('woocommerce_search_custom_style');
delete_site_option('woocommerce_search_custom_style');
delete_option('woocommerce_search_global_search');
delete_site_option('woocommerce_search_global_search');
delete_option('woocommerce_search_enable_google_analytic');
delete_site_option('woocommerce_search_enable_google_analytic');
delete_option('woocommerce_search_google_analytic_id');
delete_site_option('woocommerce_search_google_analytic_id');
delete_option('woocommerce_search_google_analytic_query_parameter');
delete_site_option('woocommerce_search_google_analytic_query_parameter');
delete_option('wc_predictive_search_synched_data');
delete_site_option('wc_predictive_search_synched_data');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_status', '_site_transient_%_status' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wc_predictive_search_starting_manual_sync');
delete_site_transient('wc_predictive_search_starting_manual_sync');

// Clear Cron Jobs
wp_clear_scheduled_hook('wc_predictive_search_sync_data_scheduled_jobs');
wp_clear_scheduled_hook('wc_predictive_search_auto_sync_products');
wp_clear_scheduled_hook('wc_predictive_search_auto_sync_detect_error');
wp_clear_scheduled_hook('wc_predictive_search_auto_sync_product_skus');
wp_clear_scheduled_hook('wc_predictive_search_auto_sync_posts');
wp_clear_scheduled_hook('wc_predictive_search_auto_sync_product_tags');
wp_clear_scheduled_hook('wc_predictive_search_auto_sync_pages');
wp_clear_scheduled_hook('wc_predictive_search_auto_end_sync');
wp_clear_scheduled_hook('wc_predictive_search_auto_sync_product_categories');
wp_clear_scheduled_hook('wc_predictive_search_auto_sync_relationships');

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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );


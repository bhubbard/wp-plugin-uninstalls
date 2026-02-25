<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woof_version');
delete_site_option('woof_version');
delete_option('woof_alert');
delete_site_option('woof_alert');
delete_option('woof_settings');
delete_site_option('woof_settings');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('woof_show_count');
delete_site_option('woof_show_count');
delete_option('woof_notices');
delete_site_option('woof_notices');
delete_option('woof_show_count_dynamic');
delete_site_option('woof_show_count_dynamic');
delete_option('woof_hide_dynamic_empty_pos');
delete_site_option('woof_hide_dynamic_empty_pos');
delete_option('woof_first_init');
delete_site_option('woof_first_init');
delete_option('woof_show_author_search');
delete_site_option('woof_show_author_search');
delete_option('woof_front_builder_demo');
delete_site_option('woof_front_builder_demo');
delete_option('woof_checkboxes_slide');
delete_site_option('woof_checkboxes_slide');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woof_stat_updated_table');
delete_site_option('woof_stat_updated_table');
delete_option('woof_stat_start_data');
delete_site_option('woof_stat_start_data');
delete_option('woof_reset_btn_txt');
delete_site_option('woof_reset_btn_txt');
delete_option('woof_cron_limit_do');
delete_site_option('woof_cron_limit_do');
delete_option('woof_try_ajax');
delete_site_option('woof_try_ajax');
delete_option('woof_show_count_dynamic_turbo_mode');
delete_site_option('woof_show_count_dynamic_turbo_mode');
delete_option('woof_show_count_turbo_mode');
delete_site_option('woof_show_count_turbo_mode');
delete_option('woof_hide_dynamic_empty_pos_turbo_mode');
delete_site_option('woof_hide_dynamic_empty_pos_turbo_mode');
delete_option('woof_set_automatically');
delete_site_option('woof_set_automatically');
delete_option('woof_autosubmit');
delete_site_option('woof_autosubmit');
delete_option('woof_hide_red_top_panel');
delete_site_option('woof_hide_red_top_panel');
delete_option('woof_sort_terms_checked');
delete_site_option('woof_sort_terms_checked');
delete_option('woof_filter_btn_txt');
delete_site_option('woof_filter_btn_txt');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('woocommerce_default_catalog_orderby');
delete_site_option('woocommerce_default_catalog_orderby');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('wppp_default_ppp');
delete_site_option('wppp_default_ppp');
delete_option('woof_manage_rate_alert');
delete_site_option('woof_manage_rate_alert');

// Delete Transients
delete_transient('woof_min_max_prices');
delete_site_transient('woof_min_max_prices');
delete_transient('wc_attribute_taxonomies');
delete_site_transient('wc_attribute_taxonomies');

// Clear Cron Jobs
wp_clear_scheduled_hook('woof_cache_count_data_auto_clean');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woof_user_messenger' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woof_user_messenger' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woof_user_messenger' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woof_user_messenger' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woof_user_search_query' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woof_user_search_query' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woof_user_search_query' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woof_user_search_query' ) );


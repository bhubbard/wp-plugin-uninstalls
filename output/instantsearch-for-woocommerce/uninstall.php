<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcis_enable_rewrite_cats');
delete_site_option('wcis_enable_rewrite_cats');
delete_option('autocomplete_version');
delete_site_option('autocomplete_version');
delete_option('wcis_site_id');
delete_site_option('wcis_site_id');
delete_option('wcis_general_settings');
delete_site_option('wcis_general_settings');
delete_option('serp_config');
delete_site_option('serp_config');
delete_option('serp_version');
delete_site_option('serp_version');
delete_option('category_version');
delete_site_option('category_version');
delete_option('authentication_key');
delete_site_option('authentication_key');
delete_option('wcis_enable_rewrite_links');
delete_site_option('wcis_enable_rewrite_links');
delete_option('wcis_serp_page_name');
delete_site_option('wcis_serp_page_name');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('isp_wpml_languages');
delete_site_option('isp_wpml_languages');
delete_option('wcis_user_email');
delete_site_option('wcis_user_email');
delete_option('is_activation_triggered');
delete_site_option('is_activation_triggered');
delete_option('cron_category_list');
delete_site_option('cron_category_list');
delete_option('wcis_timeframe');
delete_site_option('wcis_timeframe');
delete_option('cron_in_progress');
delete_site_option('cron_in_progress');
delete_option('wcis_batch_size');
delete_site_option('wcis_batch_size');
delete_option('max_num_of_batches');
delete_site_option('max_num_of_batches');
delete_option('wcis_taxonomies');
delete_site_option('wcis_taxonomies');
delete_option('wcis_acf_fields');
delete_site_option('wcis_acf_fields');
delete_option('cron_product_list');
delete_site_option('cron_product_list');
delete_option('cron_update_product_list_by_date');
delete_site_option('cron_update_product_list_by_date');
delete_option('cron_send_batches_disable');
delete_site_option('cron_send_batches_disable');
delete_option('wcis_enable_highlight');
delete_site_option('wcis_enable_highlight');
delete_option('wcis_just_created_alert');
delete_site_option('wcis_just_created_alert');
delete_option('wcis_site_alert');
delete_site_option('wcis_site_alert');
delete_option('wcis_site_notification');
delete_site_option('wcis_site_notification');

// Clear Cron Jobs
wp_clear_scheduled_hook('instantsearchplus_cron_request_event');
wp_clear_scheduled_hook('instantsearchplus_cron_request_event_backup');
wp_clear_scheduled_hook('instantsearchplus_cron_check_alerst');
wp_clear_scheduled_hook('instantsearchplus_send_all_categories');
wp_clear_scheduled_hook('instantsearchplus_send_batches_if_unreachable');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price_dates_from' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price_dates_to' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );


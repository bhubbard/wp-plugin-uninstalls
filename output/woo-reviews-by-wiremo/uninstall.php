<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wiremo_widget_location');
delete_site_option('wiremo_widget_location');
delete_option('wiremo-siteId');
delete_site_option('wiremo-siteId');
delete_option('wiremo_custom_text_reviews');
delete_site_option('wiremo_custom_text_reviews');
delete_option('wiremo_automated_authentification');
delete_site_option('wiremo_automated_authentification');
delete_option('wiremo-api-key');
delete_site_option('wiremo-api-key');
delete_option('wiremo_disable_woo');
delete_site_option('wiremo_disable_woo');
delete_option('wiremo_widget_display');
delete_site_option('wiremo_widget_display');
delete_option('wiremo_generate_schema');
delete_site_option('wiremo_generate_schema');
delete_option('wiremo_custom_tab_name');
delete_site_option('wiremo_custom_tab_name');
delete_option('wiremo_hide_mini_widget_home');
delete_site_option('wiremo_hide_mini_widget_home');
delete_option('wiremo_hide_mini_widget_cat');
delete_site_option('wiremo_hide_mini_widget_cat');
delete_option('wiremo_hide_mini_widget_prod');
delete_site_option('wiremo_hide_mini_widget_prod');
delete_option('wiremo_hide_mini_widget');
delete_site_option('wiremo_hide_mini_widget');
delete_option('wiremo_show_custom_text_related');
delete_site_option('wiremo_show_custom_text_related');
delete_option('wiremo_related_custom_text');
delete_site_option('wiremo_related_custom_text');
delete_option('wiremo_related_products_sort');
delete_site_option('wiremo_related_products_sort');
delete_option('wiremo_automated_review_request');
delete_site_option('wiremo_automated_review_request');
delete_option('wiremo_email_template');
delete_site_option('wiremo_email_template');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('wiremo_email_template_name');
delete_site_option('wiremo_email_template_name');
delete_option('wiremo_manual_emails_day');
delete_site_option('wiremo_manual_emails_day');
delete_option('wiremo_manual_email_template');
delete_site_option('wiremo_manual_email_template');
delete_option('wiremo_manual_email_template_name');
delete_site_option('wiremo_manual_email_template_name');
delete_option('wiremo_total_campaigns');
delete_site_option('wiremo_total_campaigns');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wiremo_campaigns_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wiremo-display-import');
delete_site_option('wiremo-display-import');
delete_option('wiremo_import_reviews');
delete_site_option('wiremo_import_reviews');
delete_option('wiremo_widget_sync_products');
delete_site_option('wiremo_widget_sync_products');
delete_option('wiremo_manual_datetime_start');
delete_site_option('wiremo_manual_datetime_start');
delete_option('wiremo_manual_datetime_end');
delete_site_option('wiremo_manual_datetime_end');
delete_option('wiremo_manual_create_campaigns');
delete_site_option('wiremo_manual_create_campaigns');
delete_option('wiremo-widget-text-font');
delete_site_option('wiremo-widget-text-font');
delete_option('woocommerce_default_catalog_orderby');
delete_site_option('woocommerce_default_catalog_orderby');
delete_option('wrpw_wpml_option');
delete_site_option('wrpw_wpml_option');
delete_option('wiremo-register-hooks');
delete_site_option('wiremo-register-hooks');
delete_option('wiremo-widget-hover');
delete_site_option('wiremo-widget-hover');
delete_option('wiremo-widget-star-color');
delete_site_option('wiremo-widget-star-color');
delete_option('wiremo-widget-language');
delete_site_option('wiremo-widget-language');
delete_option('wiremo-widget-star-style');
delete_site_option('wiremo-widget-star-style');
delete_option('wiremo-widget-star-size');
delete_site_option('wiremo-widget-star-size');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wiremo-review-count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wiremo-review-count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wiremo-review-count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wiremo-review-count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wiremo-review-total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wiremo-review-total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wiremo-review-total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wiremo-review-total' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wiremo-review-average' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wiremo-review-average' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wiremo-review-average' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wiremo-review-average' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_completed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_completed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_completed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_completed_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hwp_product_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hwp_product_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hwp_product_gtin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hwp_product_gtin' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sd_affiliate_royale_active');
delete_site_option('sd_affiliate_royale_active');
delete_option('sd_prevent_cache');
delete_site_option('sd_prevent_cache');
delete_option('sd_safe_download');
delete_site_option('sd_safe_download');
delete_option('sd_old_download_link');
delete_site_option('sd_old_download_link');
delete_option('sd_downloads_number');
delete_site_option('sd_downloads_number');
delete_option('sd_tax');
delete_site_option('sd_tax');
delete_option('sd_troubleshoot_no_ob');
delete_site_option('sd_troubleshoot_no_ob');
delete_option('sd_notification_from_email');
delete_site_option('sd_notification_from_email');
delete_option('sd_notification_to_email');
delete_site_option('sd_notification_to_email');
delete_option('sd_notification_to_payer_subject');
delete_site_option('sd_notification_to_payer_subject');
delete_option('sd_notification_to_payer_message');
delete_site_option('sd_notification_to_payer_message');
delete_option('sd_notification_to_seller_subject');
delete_site_option('sd_notification_to_seller_subject');
delete_option('sd_notification_to_seller_message');
delete_site_option('sd_notification_to_seller_message');
delete_option('sd_paypal_sandbox');
delete_site_option('sd_paypal_sandbox');
delete_option('sd_popularity');
delete_site_option('sd_popularity');
delete_option('sd_pp_default_cover');
delete_site_option('sd_pp_default_cover');
delete_option('sd_social_buttons');
delete_site_option('sd_social_buttons');
delete_option('sd_facebook_app_id');
delete_site_option('sd_facebook_app_id');
delete_option('sd_paypal_enabled');
delete_site_option('sd_paypal_enabled');
delete_option('sd_paypal_email');
delete_site_option('sd_paypal_email');
delete_option('sd_paypal_currency_symbol');
delete_site_option('sd_paypal_currency_symbol');
delete_option('sd_paypal_currency');
delete_site_option('sd_paypal_currency');
delete_option('sd_paypal_button');
delete_site_option('sd_paypal_button');
delete_option('sd_download_link_for_registered_only');
delete_site_option('sd_download_link_for_registered_only');
delete_option('sd_main_page');
delete_site_option('sd_main_page');
delete_option('sd_online_demo');
delete_site_option('sd_online_demo');
delete_option('sd_paypal_language');
delete_site_option('sd_paypal_language');
delete_option('product_single.tpl.html');
delete_site_option('product_single.tpl.html');
delete_option('product_multiple.tpl.html');
delete_site_option('product_multiple.tpl.html');
delete_option('product.tpl.html');
delete_site_option('product.tpl.html');
delete_option('sd_custom_templates_active');
delete_site_option('sd_custom_templates_active');
delete_option('sd_items_page');
delete_site_option('sd_items_page');
delete_option('sd_has_been_configured');
delete_site_option('sd_has_been_configured');
delete_option('sd_layout');
delete_site_option('sd_layout');
delete_option('sd_debug_payment');
delete_site_option('sd_debug_payment');
delete_option('sd_search_taxonomy');
delete_site_option('sd_search_taxonomy');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_permalink' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sd_product_permalink');
delete_site_option('sd_product_permalink');
delete_option('sd_type_permalink');
delete_site_option('sd_type_permalink');
delete_option('sd_category_permalink');
delete_site_option('sd_category_permalink');
delete_option('sell_downloads_version_number');
delete_site_option('sell_downloads_version_number');
delete_option('sd_friendly_url');
delete_site_option('sd_friendly_url');
delete_option('sd_filter_by_type');
delete_site_option('sd_filter_by_type');
delete_option('sd_filter_by_category');
delete_site_option('sd_filter_by_category');
delete_option('sd_items_page_selector');
delete_site_option('sd_items_page_selector');
delete_option('sd_pp_accept_zip');
delete_site_option('sd_pp_accept_zip');
delete_option('sd_pp_cover_size');
delete_site_option('sd_pp_cover_size');
delete_option('sd_paypal_first_time_enable');
delete_site_option('sd_paypal_first_time_enable');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}


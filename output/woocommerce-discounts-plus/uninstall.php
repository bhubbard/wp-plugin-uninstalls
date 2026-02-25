<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcdp_criteria_no');
delete_site_option('wcdp_criteria_no');
delete_option('woocommerce_plus_discount_type');
delete_site_option('woocommerce_plus_discount_type');
delete_option('woocommerce_discount_type');
delete_site_option('woocommerce_discount_type');
delete_option('wdp_qd');
delete_site_option('wdp_qd');
delete_option('wpdp_special_offer');
delete_site_option('wpdp_special_offer');
delete_option('woocommerce_user_roles');
delete_site_option('woocommerce_user_roles');
delete_option('woocommerce_enable_plus_discounts');
delete_site_option('woocommerce_enable_plus_discounts');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_css_old_price');
delete_site_option('woocommerce_css_old_price');
delete_option('woocommerce_css_new_price');
delete_site_option('woocommerce_css_new_price');
delete_option('woocommerce_show_on_subtotal');
delete_site_option('woocommerce_show_on_subtotal');
delete_option('woocommerce_show_on_order_subtotal');
delete_site_option('woocommerce_show_on_order_subtotal');
delete_option('woocommerce_cart_info');
delete_site_option('woocommerce_cart_info');
delete_option('woocommerce_remove_discount_on_coupon');
delete_site_option('woocommerce_remove_discount_on_coupon');
delete_option('woocommerce_discount_on_sale');
delete_site_option('woocommerce_discount_on_sale');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wdp_qd_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wdp_qdw_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wcdp_pricing_scale_text');
delete_site_option('wcdp_pricing_scale_text');
delete_option('gj_logic_status');
delete_site_option('gj_logic_status');
delete_option('wcdp_urgent_sale_page_id');
delete_site_option('wcdp_urgent_sale_page_id');
delete_option('wcdp_urgent_sale_categories');
delete_site_option('wcdp_urgent_sale_categories');
delete_option('wcdp_urgent_sale_expiry');
delete_site_option('wcdp_urgent_sale_expiry');
delete_option('wcdp_sale_banner_status');
delete_site_option('wcdp_sale_banner_status');
delete_option('wcdp_sale_emails_status');
delete_site_option('wcdp_sale_emails_status');
delete_option('wcdp_sales_email_settings');
delete_site_option('wcdp_sales_email_settings');
delete_option('bt_urgent_sale_product');
delete_site_option('bt_urgent_sale_product');
delete_option('wcdp_unsubscribed_emails');
delete_site_option('wcdp_unsubscribed_emails');
delete_option('wcdp_sales_email_frequency');
delete_site_option('wcdp_sales_email_frequency');
delete_option('wcdp_sales_promotional_discount');
delete_site_option('wcdp_sales_promotional_discount');
delete_option('wcdp_sales_email_times');
delete_site_option('wcdp_sales_email_times');
delete_option('wcdp_promotional_email_batches');
delete_site_option('wcdp_promotional_email_batches');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wdp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_show_discounts_on_shipping_decision');
delete_site_option('woocommerce_show_discounts_on_shipping_decision');
delete_option('wcdp_dac_error_messages');
delete_site_option('wcdp_dac_error_messages');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('wd_cart_criteria');
delete_site_option('wd_cart_criteria');
delete_option('wcdp_cats');
delete_site_option('wcdp_cats');
delete_option('woocommerce_discount_label');
delete_site_option('woocommerce_discount_label');
delete_option('wdp_s2member');
delete_site_option('wdp_s2member');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('woocommerce_variations_separate');
delete_site_option('woocommerce_variations_separate');
delete_option('woocommerce_plus_discount_condition');
delete_site_option('woocommerce_plus_discount_condition');
delete_option('woocommerce_show_discounted_price');
delete_site_option('woocommerce_show_discounted_price');
delete_option('woocommerce_tiers');
delete_site_option('woocommerce_tiers');
delete_option('woocommerce_show_discounted_price_sp');
delete_site_option('woocommerce_show_discounted_price_sp');
delete_option('woocommerce_show_discounted_price_shop');
delete_site_option('woocommerce_show_discounted_price_shop');

// Clear Cron Jobs
wp_clear_scheduled_hook('wcdp_update_daily_product_mapping');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'plus_discount_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'plus_discount_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'plus_discount_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'plus_discount_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dc_cat_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dc_cat_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dc_cat_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dc_cat_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woocommerce_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woocommerce_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woocommerce_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woocommerce_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_woocommerce_discount_love' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_woocommerce_discount_love' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_woocommerce_discount_love' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_woocommerce_discount_love' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'plus_discount_text_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'plus_discount_text_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'plus_discount_text_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'plus_discount_text_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'plus_discount_excluding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'plus_discount_excluding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'plus_discount_excluding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'plus_discount_excluding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'plus_discount_product_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'plus_discount_product_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'plus_discount_product_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'plus_discount_product_display' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'plus_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'plus_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'plus_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'plus_discount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpdp_total_discount_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpdp_total_discount_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpdp_total_discount_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpdp_total_discount_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sale_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wcdp_cart_discount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wcdp_cart_discount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wcdp_cart_discount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wcdp_cart_discount' ) );


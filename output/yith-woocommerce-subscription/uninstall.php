<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ywsbs_enable_shop_manager');
delete_site_option('ywsbs_enable_shop_manager');
delete_option('ywsbs_place_order_label');
delete_site_option('ywsbs_place_order_label');
delete_option('ywsbs_add_to_cart_label');
delete_site_option('ywsbs_add_to_cart_label');
delete_option('ywsbs_sync_first_payment');
delete_site_option('ywsbs_sync_first_payment');
delete_option('ywsbs_total_subscription_length_text');
delete_site_option('ywsbs_total_subscription_length_text');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('ywsbs_enable_manual_renews');
delete_site_option('ywsbs_enable_manual_renews');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('ywsbs_trash_pending_subscriptions');
delete_site_option('ywsbs_trash_pending_subscriptions');
delete_option('ywsbs_trash_cancelled_subscriptions');
delete_site_option('ywsbs_trash_cancelled_subscriptions');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('ywsbs_subscription_action_style');
delete_site_option('ywsbs_subscription_action_style');
delete_option('ywsbs_text_cancel_subscription_dropdown');
delete_site_option('ywsbs_text_cancel_subscription_dropdown');
delete_option('ywsbs_text_cancel_subscription_modal');
delete_site_option('ywsbs_text_cancel_subscription_modal');
delete_option('ywsbs_text_cancel_subscription_button');
delete_site_option('ywsbs_text_cancel_subscription_button');
delete_option('ywsbs_text_close_modal');
delete_site_option('ywsbs_text_close_modal');
delete_option('ywsbs_delete_subscription_order_cancelled');
delete_site_option('ywsbs_delete_subscription_order_cancelled');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('ywsbs_disable_the_reduction_of_order_stock_in_renew');
delete_site_option('ywsbs_disable_the_reduction_of_order_stock_in_renew');
delete_option('ywsbs_erasure_request');
delete_site_option('ywsbs_erasure_request');
delete_option('ywsbs_allow_customer_cancel_subscription');
delete_site_option('ywsbs_allow_customer_cancel_subscription');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_subscription_status_style' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ywsbs_delete_personal_info');
delete_site_option('ywsbs_delete_personal_info');
delete_option('ywsbs_enable_log');
delete_site_option('ywsbs_enable_log');
delete_option('woocommerce_paypal_settings');
delete_site_option('woocommerce_paypal_settings');
delete_option('ywsbs_suspend_for_failed_recurring_payment');
delete_site_option('ywsbs_suspend_for_failed_recurring_payment');
delete_option('woocommerce_ppcp-gateway_settings');
delete_site_option('woocommerce_ppcp-gateway_settings');
delete_option('ywsbs_pp_force_disabled_sources');
delete_site_option('ywsbs_pp_force_disabled_sources');
delete_option('yit_font_awesome_list');
delete_site_option('yit_font_awesome_list');
delete_option('yit_dashicons_list');
delete_site_option('yit_dashicons_list');
delete_option('yit_plugin_fw_panel_wc_default_options_set');
delete_site_option('yit_plugin_fw_panel_wc_default_options_set');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_width' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_height' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('yit_recently_activated');
delete_site_option('yit_recently_activated');
delete_option('yith_system_info');
delete_site_option('yith_system_info');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-yith-attachment-id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('yith-plugin-fw-latest-hc-articles');
delete_site_transient('yith-plugin-fw-latest-hc-articles');
delete_transient('yith-plugin-fw-system-status-tls-version');
delete_site_transient('yith-plugin-fw-system-status-tls-version');
delete_transient('yith-plugin-fw-system-status-output-ip');
delete_site_transient('yith-plugin-fw-system-status-output-ip');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('ywsbs_renew_orders');
wp_clear_scheduled_hook('ywsbs_pay_renew_subscription_orders');
wp_clear_scheduled_hook('ywsbs_trash_cancelled_subscriptions');
wp_clear_scheduled_hook('ywsbs_trash_pending_subscriptions');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'ywsbs_upgrade_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'ywsbs_upgrade_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'ywsbs_upgrade_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'ywsbs_upgrade_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'ywsbs_trial_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'ywsbs_trial_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'ywsbs_trial_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'ywsbs_trial_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ywsbs_subscription_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ywsbs_subscription_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ywsbs_subscription_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ywsbs_subscription_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blog-cats' ) );


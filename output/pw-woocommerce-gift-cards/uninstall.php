<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pwgc_hide_paypal_ipn_pdt_bug_notice');
delete_site_option('pwgc_hide_paypal_ipn_pdt_bug_notice');
delete_option('hide_pimwick_menu');
delete_site_option('hide_pimwick_menu');
delete_option('pw_gift_card_designs_free');
delete_site_option('pw_gift_card_designs_free');
delete_option('woocommerce_email_text_color');
delete_site_option('woocommerce_email_text_color');
delete_option('woocommerce_email_body_background_color');
delete_site_option('woocommerce_email_body_background_color');
delete_option('pwgc_blocks_hide_redeem_form');
delete_site_option('pwgc_blocks_hide_redeem_form');
delete_option('pwgc_before_add_to_cart_quantity_theme_fix');
delete_site_option('pwgc_before_add_to_cart_quantity_theme_fix');
delete_option('pwgc_format_prices');
delete_site_option('pwgc_format_prices');
delete_option('pwgc_use_wc_transactional_emails');
delete_site_option('pwgc_use_wc_transactional_emails');
delete_option('pwgc_send_when_processing');
delete_site_option('pwgc_send_when_processing');
delete_option('pwgc_before_add_to_cart_currency_conversion_fix');
delete_site_option('pwgc_before_add_to_cart_currency_conversion_fix');
delete_option('pwgc_autocomplete_gift_card_orders');
delete_site_option('pwgc_autocomplete_gift_card_orders');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('pwgc_allow_gift_card_purchasing');
delete_site_option('pwgc_allow_gift_card_purchasing');
delete_option('pwgc_database_version');
delete_site_option('pwgc_database_version');
delete_option('woocommerce_paypal_settings');
delete_site_option('woocommerce_paypal_settings');
delete_option('pwgc_hide_partner_message');
delete_site_option('pwgc_hide_partner_message');
delete_option('woocommerce_email_background_color');
delete_site_option('woocommerce_email_background_color');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');
delete_option('pwgc_redeem_cart_location');
delete_site_option('pwgc_redeem_cart_location');
delete_option('pwgc_redeem_checkout_location');
delete_site_option('pwgc_redeem_checkout_location');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Clear Cron Jobs
wp_clear_scheduled_hook('pw_gift_cards_recipient_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'card_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'card_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'card_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'card_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wmc_order_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wmc_order_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wmc_order_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wmc_order_info' ) );


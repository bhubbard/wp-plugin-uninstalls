<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vindi-pagamentos-notification-token');
delete_site_option('vindi-pagamentos-notification-token');
delete_option('vindi-pagamentos-success_status');
delete_site_option('vindi-pagamentos-success_status');
delete_option('vindi-pagamentos-order_notes_visibility');
delete_site_option('vindi-pagamentos-order_notes_visibility');
delete_option('vindi-pagamentos-environment');
delete_site_option('vindi-pagamentos-environment');
delete_option('vindi-pagamentos-token');
delete_site_option('vindi-pagamentos-token');
delete_option('vindi-pagamentos-text_color');
delete_site_option('vindi-pagamentos-text_color');
delete_option('vindi-pagamentos-order_prefix');
delete_site_option('vindi-pagamentos-order_prefix');
delete_option('vindi-pagamentos-store-tested');
delete_site_option('vindi-pagamentos-store-tested');
delete_option('vindi-pagamentos-enable_cancel_refund');
delete_site_option('vindi-pagamentos-enable_cancel_refund');
delete_option('vindi-pagamentos-consumer_key');
delete_site_option('vindi-pagamentos-consumer_key');
delete_option('vindi-pagamentos-consumer_secret');
delete_site_option('vindi-pagamentos-consumer_secret');
delete_option('vindi-pagamentos-document_field');
delete_site_option('vindi-pagamentos-document_field');
delete_option('vindi-pagamentos-person_type_display');
delete_site_option('vindi-pagamentos-person_type_display');
delete_option('vindi-pagamentos-enable_payment_link');
delete_site_option('vindi-pagamentos-enable_payment_link');
delete_option('vindi-pagamentos-one_click_purchase');
delete_site_option('vindi-pagamentos-one_click_purchase');
delete_option('vindi-pagamentos-enable_saved_cards_vindi');
delete_site_option('vindi-pagamentos-enable_saved_cards_vindi');
delete_option('vindi-pagamentos-show_icons');
delete_site_option('vindi-pagamentos-show_icons');
delete_option('vindi-pagamentos-show_discount');
delete_site_option('vindi-pagamentos-show_discount');
delete_option('vindi-pagamentos-show_discount_text');
delete_site_option('vindi-pagamentos-show_discount_text');
delete_option('vindi-pagamentos-logs');
delete_site_option('vindi-pagamentos-logs');
delete_option('vindi-pagamentos-authorization-code');
delete_site_option('vindi-pagamentos-authorization-code');
delete_option('vindi-pagamentos-store-tested-date');
delete_site_option('vindi-pagamentos-store-tested-date');
delete_option('vindi_pagamentos_environment');
delete_site_option('vindi_pagamentos_environment');
delete_option('vindi-pagamentos-plugin-migration');
delete_site_option('vindi-pagamentos-plugin-migration');
delete_option('woocommerce_vindi-pagamentos-credit_settings');
delete_site_option('woocommerce_vindi-pagamentos-credit_settings');
delete_option('vindi-pagamentos-refresh_token');
delete_site_option('vindi-pagamentos-refresh_token');
delete_option('payment_heading');
delete_site_option('payment_heading');
delete_option('payment_subject');
delete_site_option('payment_subject');
delete_option('heading');
delete_site_option('heading');
delete_option('subject');
delete_site_option('subject');

// Delete Transients
delete_transient('vindi_pagamentos_access_token');
delete_site_transient('vindi_pagamentos_access_token');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('vindi_max_installments_limit');
delete_site_transient('vindi_max_installments_limit');

// Clear Cron Jobs
wp_clear_scheduled_hook('vindi_retry_renewal_attempt');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_period' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_period' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_period' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_period' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_subscription_period_interval' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vindi_transaction_cancelled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vindi_transaction_cancelled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vindi_transaction_cancelled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vindi_transaction_cancelled' ) );


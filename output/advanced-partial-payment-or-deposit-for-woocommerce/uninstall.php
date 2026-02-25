<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mepp_deposit_buttons_colors');
delete_site_option('mepp_deposit_buttons_colors');
delete_option('mepp_site_wide_disable');
delete_site_option('mepp_site_wide_disable');
delete_option('mepp_instance');
delete_site_option('mepp_instance');
delete_option('mepp_order_list_table_show_has_deposit');
delete_site_option('mepp_order_list_table_show_has_deposit');
delete_option('woocommerce_allow_bulk_remove_personal_data');
delete_site_option('woocommerce_allow_bulk_remove_personal_data');
delete_option('mepp_fees_handling');
delete_site_option('mepp_fees_handling');
delete_option('mepp_taxes_handling');
delete_site_option('mepp_taxes_handling');
delete_option('mepp_shipping_handling');
delete_site_option('mepp_shipping_handling');
delete_option('mepp_shipping_taxes_handling');
delete_site_option('mepp_shipping_taxes_handling');
delete_option('mepp_coupons_handling');
delete_site_option('mepp_coupons_handling');
delete_option('mepp_partial_payments_structure');
delete_site_option('mepp_partial_payments_structure');
delete_option('mepp_second_payment_due_after');
delete_site_option('mepp_second_payment_due_after');
delete_option('mepp_second_payment_text');
delete_site_option('mepp_second_payment_text');
delete_option('mepp_default_option');
delete_site_option('mepp_default_option');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('mepp_storewide_deposit_enabled');
delete_site_option('mepp_storewide_deposit_enabled');
delete_option('mepp_storewide_deposit_amount_type');
delete_site_option('mepp_storewide_deposit_amount_type');
delete_option('mepp_storewide_deposit_amount');
delete_site_option('mepp_storewide_deposit_amount');
delete_option('mepp_storewide_deposit_force_deposit');
delete_site_option('mepp_storewide_deposit_force_deposit');
delete_option('mepp_remaining_payable');
delete_site_option('mepp_remaining_payable');
delete_option('mepp_enable_zero_deposit');
delete_site_option('mepp_enable_zero_deposit');
delete_option('mepp_debug_mode');
delete_site_option('mepp_debug_mode');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enable_deposit' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_amount_type' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_amount' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mepp_reminder_datepicker');
delete_site_option('mepp_reminder_datepicker');
delete_option('mepp_checkout_mode_enabled');
delete_site_option('mepp_checkout_mode_enabled');
delete_option('mepp_checkout_mode_deposit_amount');
delete_site_option('mepp_checkout_mode_deposit_amount');
delete_option('mepp_checkout_mode_deposit_amount_type');
delete_site_option('mepp_checkout_mode_deposit_amount_type');
delete_option('mepp_message_deposit');
delete_site_option('mepp_message_deposit');
delete_option('mepp_message_full_amount');
delete_site_option('mepp_message_full_amount');
delete_option('mepp_tax_display');
delete_site_option('mepp_tax_display');
delete_option('mepp_button_deposit');
delete_site_option('mepp_button_deposit');
delete_option('mepp_button_full_amount');
delete_site_option('mepp_button_full_amount');
delete_option('mepp_deposit_option_text');
delete_site_option('mepp_deposit_option_text');
delete_option('mepp_use_basic_radio_buttons');
delete_site_option('mepp_use_basic_radio_buttons');
delete_option('mepp_storewide_deposit_enabled_details');
delete_site_option('mepp_storewide_deposit_enabled_details');
delete_option('mepp_hide_ui_when_forced');
delete_site_option('mepp_hide_ui_when_forced');
delete_option('mepp_disable_deposit_for_user_roles');
delete_site_option('mepp_disable_deposit_for_user_roles');
delete_option('mepp_restrict_deposits_for_logged_in_users_only');
delete_site_option('mepp_restrict_deposits_for_logged_in_users_only');
delete_option('mepp_tax_display_cart_item');
delete_site_option('mepp_tax_display_cart_item');
delete_option('mepp_deposit_amount_text');
delete_site_option('mepp_deposit_amount_text');
delete_option('mepp_checkout_mode_payment_plans');
delete_site_option('mepp_checkout_mode_payment_plans');
delete_option('mepp_to_pay_text');
delete_site_option('mepp_to_pay_text');
delete_option('mepp_checkout_mode_force_deposit');
delete_site_option('mepp_checkout_mode_force_deposit');
delete_option('woocommerce_checkout_pay_endpoint');
delete_site_option('woocommerce_checkout_pay_endpoint');
delete_option('mepp_disallowed_gateways_for_deposit');
delete_site_option('mepp_disallowed_gateways_for_deposit');
delete_option('mepp_disallowed_gateways_for_second_payment');
delete_site_option('mepp_disallowed_gateways_for_second_payment');
delete_option('wc_deposit_auto_applied_coupons_for_full');
delete_site_option('wc_deposit_auto_applied_coupons_for_full');
delete_option('mepp_order_fully_paid_status');
delete_site_option('mepp_order_fully_paid_status');
delete_option('mepp_override_payment_form');
delete_site_option('mepp_override_payment_form');
delete_option('mepp_reduce_stock');
delete_site_option('mepp_reduce_stock');
delete_option('mepp_partially_paid_orders_editable');
delete_site_option('mepp_partially_paid_orders_editable');
delete_option('woocommerce_checkout_order_received_endpoint');
delete_site_option('woocommerce_checkout_order_received_endpoint');
delete_option('woocommerce_checkout_order_pay_endpoint');
delete_site_option('woocommerce_checkout_order_pay_endpoint');
delete_option('woocommerce_tax_display_cart');
delete_site_option('woocommerce_tax_display_cart');
delete_option('mepp_enable_second_payment_reminder');
delete_site_option('mepp_enable_second_payment_reminder');
delete_option('mepp_enable_partial_payment_reminder');
delete_site_option('mepp_enable_partial_payment_reminder');
delete_option('mepp_partial_payment_reminder_x_days_before_due_date');
delete_site_option('mepp_partial_payment_reminder_x_days_before_due_date');
delete_option('mepp_second_payment_reminder_duration');
delete_site_option('mepp_second_payment_reminder_duration');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpo_wcpdf_documents_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('mepp_payment_link_text');
delete_site_option('mepp_payment_link_text');
delete_option('mepp_storewide_deposit_enabled_btn');
delete_site_option('mepp_storewide_deposit_enabled_btn');
delete_option('mepp_breakdown_cart_tooltip');
delete_site_option('mepp_breakdown_cart_tooltip');
delete_option('woocommerce_colors');
delete_site_option('woocommerce_colors');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_force_deposit' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mepp_storewide_deposit_payment_plans');
delete_site_option('mepp_storewide_deposit_payment_plans');
delete_option('mepp_migration_done_2024');
delete_site_option('mepp_migration_done_2024');
delete_option('mepp_enable_partial_by_default');
delete_site_option('mepp_enable_partial_by_default');
delete_option('mepp_default_partial_type');
delete_site_option('mepp_default_partial_type');
delete_option('mepp_default_partial_amount');
delete_site_option('mepp_default_partial_amount');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Delete Transients
delete_transient('mepp_activation_redirect');
delete_site_transient('mepp_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('woocommerce_deposits_second_payment_reminder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'amount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'amount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'amount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'amount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'payment_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'payment_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'payment_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'payment_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'deposit_percentage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'deposit_percentage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'deposit_percentage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'deposit_percentage' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mepp_inherit_storewide_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mepp_inherit_storewide_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mepp_inherit_storewide_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mepp_inherit_storewide_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mepp_enable_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mepp_enable_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mepp_enable_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mepp_enable_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mepp_amount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mepp_amount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mepp_amount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mepp_amount_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mepp_deposit_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mepp_deposit_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mepp_deposit_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mepp_deposit_amount' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mepp_force_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mepp_force_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mepp_force_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mepp_force_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mep_enable_pp_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mep_enable_pp_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mep_enable_pp_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mep_enable_pp_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mep_pp_deposits_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mep_pp_deposits_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mep_pp_deposits_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mep_pp_deposits_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mep_pp_deposits_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mep_pp_deposits_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mep_pp_deposits_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mep_pp_deposits_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mep_exclude_from_global_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mep_exclude_from_global_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mep_exclude_from_global_deposit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mep_exclude_from_global_deposit' ) );


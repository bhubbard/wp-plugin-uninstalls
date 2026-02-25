<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('robokassa_payment_MerchantLogin');
delete_site_option('robokassa_payment_MerchantLogin');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'RobokassaOrderPageTitle_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'RobokassaOrderPageDescription_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('robokassa_country_code');
delete_site_option('robokassa_country_code');
delete_option('robokassa_out_currency');
delete_site_option('robokassa_out_currency');
delete_option('robokassa_payment_hold_onoff');
delete_site_option('robokassa_payment_hold_onoff');
delete_option('robokassa_culture');
delete_site_option('robokassa_culture');
delete_option('robokassa_payment_wc_robokassa_enabled');
delete_site_option('robokassa_payment_wc_robokassa_enabled');
delete_option('robokassa_iframe');
delete_site_option('robokassa_iframe');
delete_option('robokassa_payment_tax');
delete_site_option('robokassa_payment_tax');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');
delete_option('robokassa_payment_tax_source');
delete_site_option('robokassa_payment_tax_source');
delete_option('robokassa_payment_test_onoff');
delete_site_option('robokassa_payment_test_onoff');
delete_option('robokassa_payment_testshoppass1');
delete_site_option('robokassa_payment_testshoppass1');
delete_option('robokassa_payment_testshoppass2');
delete_site_option('robokassa_payment_testshoppass2');
delete_option('robokassa_payment_shoppass1');
delete_site_option('robokassa_payment_shoppass1');
delete_option('robokassa_payment_shoppass2');
delete_site_option('robokassa_payment_shoppass2');
delete_option('robokassa_payment_sno');
delete_site_option('robokassa_payment_sno');
delete_option('robokassa_payment_paymentObject');
delete_site_option('robokassa_payment_paymentObject');
delete_option('RobokassaOrderPageDescription');
delete_site_option('RobokassaOrderPageDescription');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('RobokassaOrderPageTitle_robokassa');
delete_site_option('RobokassaOrderPageTitle_robokassa');
delete_option('RobokassaOrderPageDescription_robokassa');
delete_site_option('RobokassaOrderPageDescription_robokassa');
delete_option('robokassa_agreement_text');
delete_site_option('robokassa_agreement_text');
delete_option('robokassa_agreement_pd_link');
delete_site_option('robokassa_agreement_pd_link');
delete_option('robokassa_agreement_oferta_link');
delete_site_option('robokassa_agreement_oferta_link');
delete_option('robokassa_payment_order_status_after_payment');
delete_site_option('robokassa_payment_order_status_after_payment');
delete_option('robokassa_payment_order_status_for_second_check');
delete_site_option('robokassa_payment_order_status_for_second_check');
delete_option('robokassa_payment_agent_fields_enabled');
delete_site_option('robokassa_payment_agent_fields_enabled');
delete_option('robokassa_payment_SuccessURL');
delete_site_option('robokassa_payment_SuccessURL');
delete_option('robokassa_payment_FailURL');
delete_site_option('robokassa_payment_FailURL');
delete_option('robokassa_widget_enabled');
delete_site_option('robokassa_widget_enabled');
delete_option('robokassa_widget_border_radius');
delete_site_option('robokassa_widget_border_radius');
delete_option('robokassa_payment_sms_translit');
delete_site_option('robokassa_payment_sms_translit');
delete_option('robokassa_payment_sms1_enabled');
delete_site_option('robokassa_payment_sms1_enabled');
delete_option('robokassa_payment_sms1_text');
delete_site_option('robokassa_payment_sms1_text');
delete_option('robokassa_payment_sms2_enabled');
delete_site_option('robokassa_payment_sms2_enabled');
delete_option('robokassa_payment_sms2_text');
delete_site_option('robokassa_payment_sms2_text');
delete_option('robokassa_widget_component');
delete_site_option('robokassa_widget_component');
delete_option('robokassa_widget_theme');
delete_site_option('robokassa_widget_theme');
delete_option('robokassa_widget_size');
delete_site_option('robokassa_widget_size');
delete_option('robokassa_widget_show_logo');
delete_site_option('robokassa_widget_show_logo');
delete_option('robokassa_widget_type');
delete_site_option('robokassa_widget_type');
delete_option('robokassa_widget_has_second_line');
delete_site_option('robokassa_widget_has_second_line');
delete_option('robokassa_widget_description_position');
delete_site_option('robokassa_widget_description_position');
delete_option('robokassa_widget_color_scheme');
delete_site_option('robokassa_widget_color_scheme');
delete_option('robokassa_patyment_markup');
delete_site_option('robokassa_patyment_markup');
delete_option('robokassa_payment_type_commission');
delete_site_option('robokassa_payment_type_commission');
delete_option('robokassa_payment_who_commission');
delete_site_option('robokassa_payment_who_commission');
delete_option('robokassa_payment_paytype');
delete_site_option('robokassa_payment_paytype');
delete_option('robokassa_payment_paymentMethod');
delete_site_option('robokassa_payment_paymentMethod');
delete_option('robokassa_payment_paymentObject_shipping');
delete_site_option('robokassa_payment_paymentObject_shipping');
delete_option('robokassa_payment_second_check_paymentObject');
delete_site_option('robokassa_payment_second_check_paymentObject');

// Delete Transients
delete_transient('robokassa_payment_methods_available');
delete_site_transient('robokassa_payment_methods_available');

// Clear Cron Jobs
wp_clear_scheduled_hook('robokassa_cancel_payment_event');


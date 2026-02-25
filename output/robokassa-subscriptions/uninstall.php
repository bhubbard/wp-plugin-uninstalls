<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('robokassa_out_currency');
delete_site_option('robokassa_out_currency');
delete_option('robokassa_country_code');
delete_site_option('robokassa_country_code');
delete_option('robokassa_culture');
delete_site_option('robokassa_culture');
delete_option('robokassa_payment_wc_robokassa_enabled');
delete_site_option('robokassa_payment_wc_robokassa_enabled');
delete_option('robokassa_iframe');
delete_site_option('robokassa_iframe');
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
delete_option('robokassa_payment_MerchantLogin');
delete_site_option('robokassa_payment_MerchantLogin');
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
delete_option('robokassa_payment_tax');
delete_site_option('robokassa_payment_tax');
delete_option('RobokassaOrderPageDescription');
delete_site_option('RobokassaOrderPageDescription');
delete_option('robokassa_payment_paytype');
delete_site_option('robokassa_payment_paytype');
delete_option('RobokassaOrderPageTitle_all');
delete_site_option('RobokassaOrderPageTitle_all');
delete_option('RobokassaOrderPageDescription_all');
delete_site_option('RobokassaOrderPageDescription_all');
delete_option('robokassa_agreement_text');
delete_site_option('robokassa_agreement_text');
delete_option('robokassa_agreement_pd_link');
delete_site_option('robokassa_agreement_pd_link');
delete_option('robokassa_agreement_oferta_link');
delete_site_option('robokassa_agreement_oferta_link');
delete_option('robokassa_payment_SuccessURL');
delete_site_option('robokassa_payment_SuccessURL');
delete_option('robokassa_payment_FailURL');
delete_site_option('robokassa_payment_FailURL');
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
delete_option('robokassa_patyment_markup');
delete_site_option('robokassa_patyment_markup');
delete_option('robokassa_payment_type_commission');
delete_site_option('robokassa_payment_type_commission');
delete_option('robokassa_payment_who_commission');
delete_site_option('robokassa_payment_who_commission');
delete_option('robokassa_payment_robomarket_secret');
delete_site_option('robokassa_payment_robomarket_secret');
delete_option('robokassa_payment_size_commission');
delete_site_option('robokassa_payment_size_commission');
delete_option('robokassa_payment_paymentMethod');
delete_site_option('robokassa_payment_paymentMethod');
delete_option('robokassa_payment_paymentObject');
delete_site_option('robokassa_payment_paymentObject');

// Clear Cron Jobs
wp_clear_scheduled_hook('robokassaCRON1');


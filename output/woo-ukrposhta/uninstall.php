<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('morkva_ukrposhta_default_payer');
delete_site_option('morkva_ukrposhta_default_payer');
delete_option('invoice_addweight');
delete_site_option('invoice_addweight');
delete_option('sendtype');
delete_site_option('sendtype');
delete_option('sendwtype');
delete_site_option('sendwtype');
delete_option('up_sender_type');
delete_site_option('up_sender_type');
delete_option('up_company_name');
delete_site_option('up_company_name');
delete_option('edrpou');
delete_site_option('edrpou');
delete_option('names1');
delete_site_option('names1');
delete_option('names2');
delete_site_option('names2');
delete_option('up_tin');
delete_site_option('up_tin');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('phone');
delete_site_option('phone');
delete_option('production_bearer_ecom');
delete_site_option('production_bearer_ecom');
delete_option('production_cp_token');
delete_site_option('production_cp_token');
delete_option('production_bearer_status_tracking');
delete_site_option('production_bearer_status_tracking');
delete_option('invoice_up[]');
delete_site_option('invoice_up[]');
delete_option('proptype');
delete_site_option('proptype');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('morkva_ukrposhta_db_version');
delete_site_option('morkva_ukrposhta_db_version');
delete_option('MORKVA_UKRPOSHTA_VERSION');
delete_site_option('MORKVA_UKRPOSHTA_VERSION');
delete_option('morkva_ukrposhta_state');
delete_site_option('morkva_ukrposhta_state');
delete_option('mrkvup_checkout_fields_position');
delete_site_option('mrkvup_checkout_fields_position');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'morkva_ukrposhta_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('morkva_ukrposhta_address_shipping');
delete_site_option('morkva_ukrposhta_address_shipping');
delete_option('morkva_ukrposhta_send_statistic');
delete_site_option('morkva_ukrposhta_send_statistic');
delete_option('_transient_shipping-transient-version');
delete_site_option('_transient_shipping-transient-version');
delete_option('morkva_ukrposhta_up_lang');
delete_site_option('morkva_ukrposhta_up_lang');
delete_option('senduptype');
delete_site_option('senduptype');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('mrkvup_default_order_weight ');
delete_site_option('mrkvup_default_order_weight ');
delete_option('mrkvup_default_order_length ');
delete_site_option('mrkvup_default_order_length ');
delete_option('mrkvup_default_order_height');
delete_site_option('mrkvup_default_order_height');
delete_option('mrkvup_default_order_height ');
delete_site_option('mrkvup_default_order_height ');
delete_option('mrkvup_default_order_width');
delete_site_option('mrkvup_default_order_width');
delete_option(' sendtype');
delete_site_option(' sendtype');
delete_option('up_invoice_description');
delete_site_option('up_invoice_description');
delete_option('morkva_ukrposhta_transfer_postpay_to_sender_bank_account');
delete_site_option('morkva_ukrposhta_transfer_postpay_to_sender_bank_account');
delete_option('morkva_ukrposhta_default_price');
delete_site_option('morkva_ukrposhta_default_price');
delete_option('morkva_ukrposhta_up_api_key');
delete_site_option('morkva_ukrposhta_up_api_key');
delete_option('morkva_ukrposhta_spinner_color');
delete_site_option('morkva_ukrposhta_spinner_color');
delete_option('zone_ukrposhta');
delete_site_option('zone_ukrposhta');
delete_option('mrkvup_default_order_weight');
delete_site_option('mrkvup_default_order_weight');
delete_option('mrkvup_default_order_length');
delete_site_option('mrkvup_default_order_length');
delete_option('ukrposhta_calculate_rates_currency');
delete_site_option('ukrposhta_calculate_rates_currency');
delete_option('names3');
delete_site_option('names3');
delete_option('flat');
delete_site_option('flat');
delete_option('invoice_weight');
delete_site_option('invoice_weight');
delete_option('mrkvup_sender_iban');
delete_site_option('mrkvup_sender_iban');
delete_option('morkvaup_email_template');
delete_site_option('morkvaup_email_template');
delete_option('morkvaup_email_subject');
delete_site_option('morkvaup_email_subject');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ukrposhta_ttn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ukrposhta_ttn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ukrposhta_ttn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ukrposhta_ttn' ) );


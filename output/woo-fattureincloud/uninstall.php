<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wfic_device_code');
delete_site_option('wfic_device_code');
delete_option('wfic_api_key_fattureincloud');
delete_site_option('wfic_api_key_fattureincloud');
delete_option('wfic_refresh_token');
delete_site_option('wfic_refresh_token');
delete_option('wfic_id_azienda');
delete_site_option('wfic_id_azienda');
delete_option('api_uid_fattureincloud');
delete_site_option('api_uid_fattureincloud');
delete_option('woo-fattureincloud-anno-fatture');
delete_site_option('woo-fattureincloud-anno-fatture');
delete_option('fattureincloud_send_choice');
delete_site_option('fattureincloud_send_choice');
delete_option('fattureincloud_auto_save');
delete_site_option('fattureincloud_auto_save');
delete_option('fattureincloud_paid');
delete_site_option('fattureincloud_paid');
delete_option('activate_customer_receipt');
delete_site_option('activate_customer_receipt');
delete_option('show_short_descr');
delete_site_option('show_short_descr');
delete_option('disable_cf_required');
delete_site_option('disable_cf_required');
delete_option('count_load_time_woo_fattureincloud');
delete_site_option('count_load_time_woo_fattureincloud');
delete_option('woo_fattureincloud_order_id');
delete_site_option('woo_fattureincloud_order_id');
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('fattureincloud_autosent_id_fallito');
delete_site_option('fattureincloud_autosent_id_fallito');
delete_option('fattureincloud_autosent_id_successo');
delete_site_option('fattureincloud_autosent_id_successo');
delete_option('wfic_nome_azienda');
delete_site_option('wfic_nome_azienda');
delete_option('update_customer_registry');
delete_site_option('update_customer_registry');
delete_option('fattureincloud_partiva_codfisc');
delete_site_option('fattureincloud_partiva_codfisc');
delete_option('api_key_fattureincloud');
delete_site_option('api_key_fattureincloud');
delete_option('delete_autosave_fattureincloud');
delete_site_option('delete_autosave_fattureincloud');

// Delete Transients
delete_transient('wfic_check_block_checkout');
delete_site_transient('wfic_check_block_checkout');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_fattureincloud_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_fattureincloud_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_fattureincloud_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_fattureincloud_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woo_fattureincloud_notice_maybe_delay' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woo_fattureincloud_notice_maybe_delay' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woo_fattureincloud_notice_maybe_delay' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woo_fattureincloud_notice_maybe_delay' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_cod_fisc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_cod_fisc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_cod_fisc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_cod_fisc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_partita_iva' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_partita_iva' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_partita_iva' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_partita_iva' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_pec_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_pec_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_pec_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_pec_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_codice_destinatario' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_codice_destinatario' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_codice_destinatario' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_codice_destinatario' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'woorichiestaricevuta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'woorichiestaricevuta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'woorichiestaricevuta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'woorichiestaricevuta' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_cod_fisc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_cod_fisc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_cod_fisc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_cod_fisc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_partita_iva' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_partita_iva' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_partita_iva' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_partita_iva' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_pec_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_pec_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_pec_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_pec_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_codice_destinatario' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_codice_destinatario' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_codice_destinatario' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_codice_destinatario' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('geliver_akilli_kargo_plugin_mode');
delete_site_option('geliver_akilli_kargo_plugin_mode');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');
delete_option('woocommerce_email_background_color');
delete_site_option('woocommerce_email_background_color');
delete_option('woocommerce_email_body_text_color');
delete_site_option('woocommerce_email_body_text_color');
delete_option('geliver_api_key');
delete_site_option('geliver_api_key');
delete_option('geliver_tek_asamada_gonderi_olusturma');
delete_site_option('geliver_tek_asamada_gonderi_olusturma');
delete_option('geliver_otomatik_aktarilacaklar');
delete_site_option('geliver_otomatik_aktarilacaklar');
delete_option('shipping_company');
delete_site_option('shipping_company');
delete_option('geliver_akilli_kargo_desi_info');
delete_site_option('geliver_akilli_kargo_desi_info');
delete_option('geliver_akilli_kargo_desi_type');
delete_site_option('geliver_akilli_kargo_desi_type');
delete_option('geliver_manuel_musteri_mode');
delete_site_option('geliver_manuel_musteri_mode');
delete_option('geliver_exchange_rate');
delete_site_option('geliver_exchange_rate');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('geliver_akilli_kargo_shipping_company');
delete_site_option('geliver_akilli_kargo_shipping_company');
delete_option('kargo_siralama');
delete_site_option('kargo_siralama');
delete_option('geliver_sepette_ucretsiz_tutar');
delete_site_option('geliver_sepette_ucretsiz_tutar');
delete_option('geliver_sepette_ucretsiz_ayar');
delete_site_option('geliver_sepette_ucretsiz_ayar');
delete_option('geliver_akilli_komisyon_orani');
delete_site_option('geliver_akilli_komisyon_orani');
delete_option('geliver_akilli_kargo_komisyon_type');
delete_site_option('geliver_akilli_kargo_komisyon_type');
delete_option('geliver_fiyat_yuvarlama');
delete_site_option('geliver_fiyat_yuvarlama');
delete_option('redirect_to_geliver_akilli_kargo_mode_page');
delete_site_option('redirect_to_geliver_akilli_kargo_mode_page');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'geliver_tracking_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'geliver_tracking_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'geliver_tracking_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'geliver_tracking_company' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'geliver_tracking_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'geliver_tracking_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'geliver_tracking_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'geliver_tracking_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'geliver_tracking_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'geliver_tracking_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'geliver_tracking_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'geliver_tracking_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'geliver_shipment_mail_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'geliver_shipment_mail_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'geliver_shipment_mail_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'geliver_shipment_mail_sent' ) );


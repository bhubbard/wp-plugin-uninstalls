<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ee_options');
delete_site_option('ee_options');
delete_option('ee_remarketing_snippets');
delete_site_option('ee_remarketing_snippets');
delete_option('ee_api_data');
delete_site_option('ee_api_data');
delete_option('ee_additional_data');
delete_site_option('ee_additional_data');
delete_option('conv_selected_events');
delete_site_option('conv_selected_events');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('convsst_msg_nofifications');
delete_site_option('convsst_msg_nofifications');
delete_option('convsst_sst_pcount');
delete_site_option('convsst_sst_pcount');
delete_option('ee_conversio_send_to');
delete_site_option('ee_conversio_send_to');
delete_option('ga_EC');
delete_site_option('ga_EC');
delete_option('google_ads_conversion_tracking');
delete_site_option('google_ads_conversion_tracking');
delete_option('ee_ads_tracking_id');
delete_site_option('ee_ads_tracking_id');
delete_option('ads_ert');
delete_site_option('ads_ert');
delete_option('ads_edrt');
delete_site_option('ads_edrt');
delete_option('ee_customer_gmail');
delete_site_option('ee_customer_gmail');
delete_option('convsst_ut');
delete_site_option('convsst_ut');
delete_option('ee_customer_gtm_gmail');
delete_site_option('ee_customer_gtm_gmail');
delete_option('conv_sst_server_hits_db');
delete_site_option('conv_sst_server_hits_db');
delete_option('convsst_prod_mapped_attrs');
delete_site_option('convsst_prod_mapped_attrs');
delete_option('convsst_prod_mapped_cats');
delete_site_option('convsst_prod_mapped_cats');
delete_option('convsst_ads_tracking_id');
delete_site_option('convsst_ads_tracking_id');
delete_option('conv_gads_currency');
delete_site_option('conv_gads_currency');

// Delete Transients
delete_transient('conv_sst_server_hits');
delete_site_transient('conv_sst_server_hits');
delete_transient('_conversios_activation_redirect_sst');
delete_site_transient('_conversios_activation_redirect_sst');

// Clear Cron Jobs
wp_clear_scheduled_hook('convsst_dbnewfeature_schedule_hook');
wp_clear_scheduled_hook('tvc_add_cron_interval_for_product_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tvc_tracked_refund' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tvc_tracked_refund' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tvc_tracked_refund' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tvc_tracked_refund' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_primary_product_cat' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tracked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tracked' ) );


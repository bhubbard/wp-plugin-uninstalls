<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pwoosms_table_archive');
delete_site_option('pwoosms_table_archive');
delete_option('pwoosms_table_contacts');
delete_site_option('pwoosms_table_contacts');
delete_option('pwoosms_hide_about_page');
delete_site_option('pwoosms_hide_about_page');
delete_option('pwoosms_redirect_about_page');
delete_site_option('pwoosms_redirect_about_page');
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('pwsms_notices');
delete_site_option('pwsms_notices');
delete_option('woocommerce_notify_no_stock_amount');
delete_site_option('woocommerce_notify_no_stock_amount');
delete_option('pwoosms_update_product_admin_meta');
delete_site_option('pwoosms_update_product_admin_meta');
delete_option('pwoosms_ads_noticemelli');
delete_site_option('pwoosms_ads_noticemelli');
delete_option('pwoosms_update_gateway_options');
delete_site_option('pwoosms_update_gateway_options');
delete_option('pwoosms_table_contacts_created');
delete_site_option('pwoosms_table_contacts_created');
delete_option('pwoosms_table_contacts_updated');
delete_site_option('pwoosms_table_contacts_updated');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pwsms_notice_%', '_site_transient_pwsms_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('pwsms_notice_all');
delete_site_transient('pwsms_notice_all');
delete_transient('pwsms_update_notices');
delete_site_transient('pwsms_update_notices');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_last_name' ) );


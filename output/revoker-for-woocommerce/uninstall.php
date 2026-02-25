<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_store_phone');
delete_site_option('woocommerce_store_phone');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('revoker_withdrawal_period');
delete_site_option('revoker_withdrawal_period');
delete_option('revoker_button_text');
delete_site_option('revoker_button_text');
delete_option('revoker_confirm_button_text');
delete_site_option('revoker_confirm_button_text');
delete_option('revoker_cancel_button_text');
delete_site_option('revoker_cancel_button_text');
delete_option('revoker_button_style');
delete_site_option('revoker_button_style');
delete_option('revoker_button_position');
delete_site_option('revoker_button_position');
delete_option('revoker_show_in_emails');
delete_site_option('revoker_show_in_emails');
delete_option('revoker_send_confirmation');
delete_site_option('revoker_send_confirmation');
delete_option('revoker_admin_notification');
delete_site_option('revoker_admin_notification');
delete_option('revoker_return_company');
delete_site_option('revoker_return_company');
delete_option('revoker_return_address');
delete_site_option('revoker_return_address');
delete_option('revoker_return_address_2');
delete_site_option('revoker_return_address_2');
delete_option('revoker_return_postcode');
delete_site_option('revoker_return_postcode');
delete_option('revoker_return_city');
delete_site_option('revoker_return_city');
delete_option('revoker_excluded_categories');
delete_site_option('revoker_excluded_categories');
delete_option('revoker_excluded_products');
delete_site_option('revoker_excluded_products');
delete_option('revoker_exclude_downloaded');
delete_site_option('revoker_exclude_downloaded');
delete_option('revoker_db_version');
delete_site_option('revoker_db_version');
delete_option('woocommerce_email_from_name');
delete_site_option('woocommerce_email_from_name');
delete_option('revoker_withdrawal_page_id');
delete_site_option('revoker_withdrawal_page_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'revoker_pro_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'revoker_pro_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'revoker_pro_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'revoker_pro_notice_dismissed' ) );


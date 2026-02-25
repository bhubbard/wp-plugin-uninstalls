<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('paypal_mode');
delete_site_option('paypal_mode');
delete_option('stripe_mode');
delete_site_option('stripe_mode');
delete_option('lead_currency');
delete_site_option('lead_currency');
delete_option('leadtrail_license_key');
delete_site_option('leadtrail_license_key');
delete_option('leadtrail_license_status');
delete_site_option('leadtrail_license_status');
delete_option('leadtrail_license_expiry_date');
delete_site_option('leadtrail_license_expiry_date');
delete_option('lead_publish');
delete_site_option('lead_publish');
delete_option('leadtrail_custom_fields');
delete_site_option('leadtrail_custom_fields');
delete_option('leadtrail_cfield_settings');
delete_site_option('leadtrail_cfield_settings');
delete_option('leadtrail_cfield_settings_hide');
delete_site_option('leadtrail_cfield_settings_hide');
delete_option('paypal_api_username');
delete_site_option('paypal_api_username');
delete_option('paypal_api_password');
delete_site_option('paypal_api_password');
delete_option('paypal_api_signature');
delete_site_option('paypal_api_signature');
delete_option('stripe_publishable_key');
delete_site_option('stripe_publishable_key');
delete_option('stripe_secret_key');
delete_site_option('stripe_secret_key');
delete_option('buy_lead_page');
delete_site_option('buy_lead_page');
delete_option('_leadbuyerdashboard_page');
delete_site_option('_leadbuyerdashboard_page');
delete_option('_leaddisplayall_page');
delete_site_option('_leaddisplayall_page');
delete_option('multiple_lead_show');
delete_site_option('multiple_lead_show');
delete_option('max_lead_purchase');
delete_site_option('max_lead_purchase');
delete_option('_leaddetail_page');
delete_site_option('_leaddetail_page');
delete_option('admin_lead_field_display');
delete_site_option('admin_lead_field_display');
delete_option('lead_field_display');
delete_site_option('lead_field_display');
delete_option('cat_lead_field_display');
delete_site_option('cat_lead_field_display');
delete_option('group_lead_field_display');
delete_site_option('group_lead_field_display');
delete_option('quality_lead_field_display');
delete_site_option('quality_lead_field_display');
delete_option('admin_lead_approval');
delete_site_option('admin_lead_approval');
delete_option('lead_purchase_count');
delete_site_option('lead_purchase_count');
delete_option('leadtrail_error');
delete_site_option('leadtrail_error');
delete_option('leadtrail_success');
delete_site_option('leadtrail_success');
delete_option('leadtrail_form_names');
delete_site_option('leadtrail_form_names');
delete_option('leadtrail_elementor');
delete_site_option('leadtrail_elementor');
delete_option('admin_note');
delete_site_option('admin_note');
delete_option('GHAXlt_custom_roles_version');
delete_site_option('GHAXlt_custom_roles_version');
delete_option('stipe_mode');
delete_site_option('stipe_mode');
delete_option('buyer_note');
delete_site_option('buyer_note');
delete_option('skyrocket_product_license_key');
delete_site_option('skyrocket_product_license_key');
delete_option('skyrocket_product_license_status');
delete_site_option('skyrocket_product_license_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'leadtrail_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'leadtrail_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'leadtrail_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'leadtrail_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'leadcart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'leadcart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'leadcart' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'leadcart' ) );


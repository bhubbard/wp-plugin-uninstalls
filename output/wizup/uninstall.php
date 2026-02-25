<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wizup_total_time_minutes');
delete_site_option('wizup_total_time_minutes');
delete_option('wizup_abandoned_cart_template_name');
delete_site_option('wizup_abandoned_cart_template_name');
delete_option('wizup_abandoned_cart_variables');
delete_site_option('wizup_abandoned_cart_variables');
delete_option('wizup_access_token');
delete_site_option('wizup_access_token');
delete_option('wizup_templates');
delete_site_option('wizup_templates');
delete_option('wizup_show_product_whatsapp_button');
delete_site_option('wizup_show_product_whatsapp_button');
delete_option('wizup_whatsapp_button_message_product');
delete_site_option('wizup_whatsapp_button_message_product');
delete_option('wizup_whatsapp_button_message_general');
delete_site_option('wizup_whatsapp_button_message_general');
delete_option('wizup_new_order_template_name');
delete_site_option('wizup_new_order_template_name');
delete_option('wizup_new_order_variables');
delete_site_option('wizup_new_order_variables');
delete_option('wizup_delivered_order_template_name');
delete_site_option('wizup_delivered_order_template_name');
delete_option('wizup_delivered_order_variables');
delete_site_option('wizup_delivered_order_variables');
delete_option('wizup_canceled_order_template_name');
delete_site_option('wizup_canceled_order_template_name');
delete_option('wizup_canceled_order_variables');
delete_site_option('wizup_canceled_order_variables');
delete_option('new_order_template_name');
delete_site_option('new_order_template_name');
delete_option('new_order_variables');
delete_site_option('new_order_variables');
delete_option('delivered_order_template_name');
delete_site_option('delivered_order_template_name');
delete_option('delivered_order_variables');
delete_site_option('delivered_order_variables');
delete_option('canceled_order_template_name');
delete_site_option('canceled_order_template_name');
delete_option('canceled_order_variables');
delete_site_option('canceled_order_variables');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_template_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wizup_cart_activity_%', '_site_transient_wizup_cart_activity_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wizup_abandoned_cart_notification_%', '_site_transient_wizup_abandoned_cart_notification_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wizup_check_abandoned_carts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_whatsapp_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_whatsapp_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_whatsapp_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_whatsapp_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wizup_active_tab' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wizup_active_tab' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wizup_active_tab' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wizup_active_tab' ) );


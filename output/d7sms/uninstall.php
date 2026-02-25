<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('d7sms_enable_plugin');
delete_site_option('d7sms_enable_plugin');
delete_option('d7sms_sms_gateway');
delete_site_option('d7sms_sms_gateway');
delete_option('d7sms_customer_notification');
delete_site_option('d7sms_customer_notification');
delete_option('d7sms_active_charsets');
delete_site_option('d7sms_active_charsets');
delete_option('d7sms_enable_sms_length');
delete_site_option('d7sms_enable_sms_length');
delete_option('d7sms_sms_length');
delete_site_option('d7sms_sms_length');
delete_option('d7sms_sms_active_send');
delete_site_option('d7sms_sms_active_send');
delete_option('d7sms_checkout_checkbox_value');
delete_site_option('d7sms_checkout_checkbox_value');
delete_option('d7sms_checkout_checkbox_text');
delete_site_option('d7sms_checkout_checkbox_text');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('d7sms_message_admin');
delete_site_option('d7sms_message_admin');
delete_option('d7sms_admin_phone');
delete_site_option('d7sms_admin_phone');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'd7sms_message_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('d7sms_message_generic');
delete_site_option('d7sms_message_generic');
delete_option('d7_wpv_vendors_enable_sms');
delete_site_option('d7_wpv_vendors_enable_sms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'd7sms_sms_active_send_vendor_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'd7sms_admin_phone_vendor_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('d7sms_from_asid');
delete_site_option('d7sms_from_asid');
delete_option('d7sms_from_number');
delete_site_option('d7sms_from_number');
delete_option('d7sms_debug_log');
delete_site_option('d7sms_debug_log');
delete_option('d7sms_default_sms_user');
delete_site_option('d7sms_default_sms_user');
delete_option('d7sms_default_sms_pwd');
delete_site_option('d7sms_default_sms_pwd');
delete_option('d7_recently_activated');
delete_site_option('d7_recently_activated');
delete_option('d7_font_awesome_list');
delete_site_option('d7_font_awesome_list');
delete_option('d7_dashicons_list');
delete_site_option('d7_dashicons_list');
delete_option('d7_plugin_fw_panel_wc_default_options_set');
delete_site_option('d7_plugin_fw_panel_wc_default_options_set');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_width' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_height' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'blog-cats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rewrite' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rewrite' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rewrite' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rewrite' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_label_singular' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_label_singular' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_label_singular' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_label_singular' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_label_plural' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_label_plural' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_label_plural' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_label_plural' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxonomy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxonomy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxonomy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxonomy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_taxonomy_rewrite' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_taxonomy_rewrite' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_taxonomy_rewrite' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_taxonomy_rewrite' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_post_type' ) );


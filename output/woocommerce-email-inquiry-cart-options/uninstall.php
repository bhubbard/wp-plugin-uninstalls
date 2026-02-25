<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_clean_on_deletion' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enable' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_google_font_list' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_style_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_ei_button_hyperlink_margin_message_dontshow');
delete_site_option('wc_ei_button_hyperlink_margin_message_dontshow');
delete_option('wc_ei_hide_inquiry_button_message_dontshow');
delete_site_option('wc_ei_hide_inquiry_button_message_dontshow');
delete_option('wc_ei_hide_addtocart_message_dontshow');
delete_site_option('wc_ei_hide_addtocart_message_dontshow');
delete_option('wc_ei_hide_price_message_dontshow');
delete_site_option('wc_ei_hide_price_message_dontshow');
delete_option('wc_ei_manual_quote_message_dontshow');
delete_site_option('wc_ei_manual_quote_message_dontshow');
delete_option('wc_ei_use_woocommerce_css_message_dontshow');
delete_site_option('wc_ei_use_woocommerce_css_message_dontshow');
delete_option('a3rev_wc_email_inquiry_version');
delete_site_option('a3rev_wc_email_inquiry_version');
delete_option('a3rev_wc_email_inquiry_ultimate_version');
delete_site_option('a3rev_wc_email_inquiry_ultimate_version');
delete_option('a3rev_wc_email_inquiry_just_installed');
delete_site_option('a3rev_wc_email_inquiry_just_installed');
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('wc_email_inquiry_customize_email_button');
delete_site_option('wc_email_inquiry_customize_email_button');
delete_option('wc_email_inquiry_global_settings');
delete_site_option('wc_email_inquiry_global_settings');
delete_option('wc_email_inquiry_cart_options_style_version');
delete_site_option('wc_email_inquiry_cart_options_style_version');
delete_option('wc_email_inquiry_contact_success');
delete_site_option('wc_email_inquiry_contact_success');
delete_option('wc_email_inquiry_rules_roles_settings');
delete_site_option('wc_email_inquiry_rules_roles_settings');
delete_option('wc_email_inquiry_email_options');
delete_site_option('wc_email_inquiry_email_options');
delete_option('wc_email_inquiry_3rd_contactforms_settings');
delete_site_option('wc_email_inquiry_3rd_contactforms_settings');
delete_option('wc_email_inquiry_customize_email_popup');
delete_site_option('wc_email_inquiry_customize_email_popup');
delete_option('wc_email_inquiry_contact_form_settings');
delete_site_option('wc_email_inquiry_contact_form_settings');
delete_option('wc_email_inquiry_contact_form_information_text');
delete_site_option('wc_email_inquiry_contact_form_information_text');
delete_option('wc_email_inquiry_contact_form_condition_text');
delete_site_option('wc_email_inquiry_contact_form_condition_text');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_status', '_site_transient_%_status' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%opened' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%-custom-boxes' ) );


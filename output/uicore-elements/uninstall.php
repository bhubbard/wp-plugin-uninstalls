<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uicore_elements_mailchimp_secret_key');
delete_site_option('uicore_elements_mailchimp_secret_key');
delete_option('uicore_elements_newsletter_service_key');
delete_site_option('uicore_elements_newsletter_service_key');
delete_option('uicore_elements_recaptcha_site_key');
delete_site_option('uicore_elements_recaptcha_site_key');
delete_option('uicore_elements_recaptcha_secret_key');
delete_site_option('uicore_elements_recaptcha_secret_key');
delete_option('elementor_active_kit');
delete_site_option('elementor_active_kit');
delete_option('uicore_connect');
delete_site_option('uicore_connect');
delete_option('uicore_elements_installed');
delete_site_option('uicore_elements_installed');
delete_option('uicore_elements_version');
delete_site_option('uicore_elements_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ui_elements_widgetdata_%', '_site_transient_ui_elements_widgetdata_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ui_e_form_widget_settings_%', '_site_transient_ui_e_form_widget_settings_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'page_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'page_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'page_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'page_description' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vendus_plugin_form_config_register');
delete_site_option('vendus_plugin_form_config_register');
delete_option('vendus_plugin_form_config_exemption');
delete_site_option('vendus_plugin_form_config_exemption');
delete_option('vendus_plugin_form_config_exemption_law');
delete_site_option('vendus_plugin_form_config_exemption_law');
delete_option('vendus_plugin_form_config_invoice_type');
delete_site_option('vendus_plugin_form_config_invoice_type');
delete_option('vendus_plugin_form_config_ignore_notes');
delete_site_option('vendus_plugin_form_config_ignore_notes');
delete_option('vendus_plugin_config_api_key');
delete_site_option('vendus_plugin_config_api_key');
delete_option('vendus_plugin_form_config_ignore_check_completed');
delete_site_option('vendus_plugin_form_config_ignore_check_completed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_nif' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_nif' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_nif' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_nif' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_nif' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_nif' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_nif' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_nif' ) );


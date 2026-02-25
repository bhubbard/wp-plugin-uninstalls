<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_form_builder_remove_data_on_uninstall');
delete_site_option('auto_form_builder_remove_data_on_uninstall');
delete_option('auto_form_builder_show_in_admin_bar');
delete_site_option('auto_form_builder_show_in_admin_bar');
delete_option('auto_form_builder_data_retention_period');
delete_site_option('auto_form_builder_data_retention_period');
delete_option('auto_form_builder_enable_ip_anonymization');
delete_site_option('auto_form_builder_enable_ip_anonymization');
delete_option('auto_form_builder_gdpr_compliance_mode');
delete_site_option('auto_form_builder_gdpr_compliance_mode');
delete_option('auto_form_builder_auto_delete_old_data');
delete_site_option('auto_form_builder_auto_delete_old_data');
delete_option('auto_form_builder_privacy_policy_link');
delete_site_option('auto_form_builder_privacy_policy_link');
delete_option('auto_form_builder_roadmap_consent');
delete_site_option('auto_form_builder_roadmap_consent');
delete_option('auto_form_builder_google_sheets_settings');
delete_site_option('auto_form_builder_google_sheets_settings');
delete_option('auto_form_builder_admin_email');
delete_site_option('auto_form_builder_admin_email');
delete_option('auto_form_builder_timezone');
delete_site_option('auto_form_builder_timezone');
delete_option('auto_form_builder_debug_logs');
delete_site_option('auto_form_builder_debug_logs');
delete_option('auto_form_builder_from_name');
delete_site_option('auto_form_builder_from_name');
delete_option('auto_form_builder_from_email');
delete_site_option('auto_form_builder_from_email');
delete_option('auto_form_builder_smtp_host');
delete_site_option('auto_form_builder_smtp_host');
delete_option('auto_form_builder_smtp_port');
delete_site_option('auto_form_builder_smtp_port');
delete_option('auto_form_builder_smtp_username');
delete_site_option('auto_form_builder_smtp_username');
delete_option('auto_form_builder_smtp_password');
delete_site_option('auto_form_builder_smtp_password');
delete_option('auto_form_builder_smtp_encryption');
delete_site_option('auto_form_builder_smtp_encryption');
delete_option('auto_form_builder_address_storage_version');
delete_site_option('auto_form_builder_address_storage_version');

// Delete Transients
delete_transient('auto_form_builder_updated');
delete_site_transient('auto_form_builder_updated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'auto_form_builder_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'auto_form_builder_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'auto_form_builder_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'auto_form_builder_preferences' ) );


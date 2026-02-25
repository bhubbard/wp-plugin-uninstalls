<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('formychat_country_code');
delete_site_option('formychat_country_code');
delete_option('formychat_wc_shop');
delete_site_option('formychat_wc_shop');
delete_option('formychat_wc_product');
delete_site_option('formychat_wc_product');
delete_option('formychat_custom_css');
delete_site_option('formychat_custom_css');
delete_option('formychat_integration_fluent-crm');
delete_site_option('formychat_integration_fluent-crm');
delete_option('formychat_integration_mailchimp');
delete_site_option('formychat_integration_mailchimp');
delete_option('formychat_google_sheets');
delete_site_option('formychat_google_sheets');
delete_option('formychat_integration_google_sheets');
delete_site_option('formychat_integration_google_sheets');
delete_option('scf-setup-run');
delete_site_option('scf-setup-run');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'formychat_integration_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('formychat_integration_fluent-crm_lists');
delete_site_option('formychat_integration_fluent-crm_lists');
delete_option('formychat_integration_fluent-crm_tags');
delete_site_option('formychat_integration_fluent-crm_tags');
delete_option('formychat_integration_fluent-crm_fields_mapping');
delete_site_option('formychat_integration_fluent-crm_fields_mapping');
delete_option('formychat_widget_table_created');
delete_site_option('formychat_widget_table_created');
delete_option('formychat_has_first_widget');
delete_site_option('formychat_has_first_widget');
delete_option('formychat_whatsapp');
delete_site_option('formychat_whatsapp');
delete_option('formychat_icon');
delete_site_option('formychat_icon');
delete_option('formychat_call_to_action');
delete_site_option('formychat_call_to_action');
delete_option('formychat_form');
delete_site_option('formychat_form');
delete_option('formychat_contact_form_7');
delete_site_option('formychat_contact_form_7');
delete_option('formychat_greetings');
delete_site_option('formychat_greetings');
delete_option('formychat_target');
delete_site_option('formychat_target');
delete_option('formychat_enabled');
delete_site_option('formychat_enabled');

// Delete Transients
delete_transient('formychat_google_sheets_just_connected');
delete_site_transient('formychat_google_sheets_just_connected');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_formy_chat_configuration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_formy_chat_configuration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_formy_chat_configuration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_formy_chat_configuration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );


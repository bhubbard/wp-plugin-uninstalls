<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('igzf_zoho_token');
delete_site_option('igzf_zoho_token');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'igzf_zoho_fields_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'zoho_crm_module_data%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-reqfields' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'igzf_data_form_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('zoho_users_list');
delete_site_option('zoho_users_list');
delete_option('igzf_zoho_datacenter');
delete_site_option('igzf_zoho_datacenter');
delete_option('igzf_zoho_client_id');
delete_site_option('igzf_zoho_client_id');
delete_option('igzf_zoho_client_secret');
delete_site_option('igzf_zoho_client_secret');
delete_option('igzf_zoho_redirection_url');
delete_site_option('igzf_zoho_redirection_url');
delete_option('igzf_zoho_domain');
delete_site_option('igzf_zoho_domain');
delete_option('igzf_zoho');
delete_site_option('igzf_zoho');
delete_option('ignbk_zohobooks_token');
delete_site_option('ignbk_zohobooks_token');
delete_option('gf_zoho_notification_send_to');
delete_site_option('gf_zoho_notification_send_to');
delete_option('gf_zoho_notification_subject');
delete_site_option('gf_zoho_notification_subject');
delete_option('zoho_module_data');
delete_site_option('zoho_module_data');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'igzf_zoho_action_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('igzf_zoho_uninstall');
delete_site_option('igzf_zoho_uninstall');


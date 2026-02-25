<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pp_wczc_zoho_api2_token');
delete_site_option('pp_wczc_zoho_api2_token');
delete_option('pp_wczc_zoho_client_id');
delete_site_option('pp_wczc_zoho_client_id');
delete_option('pp_wczc_zoho_client_secret');
delete_site_option('pp_wczc_zoho_client_secret');
delete_option('pp_wczc_zoho_email');
delete_site_option('pp_wczc_zoho_email');
delete_option('pp_wczc_zoho_host');
delete_site_option('pp_wczc_zoho_host');
delete_option('pp_wczc_zoho_api_token');
delete_site_option('pp_wczc_zoho_api_token');
delete_option('pp_wczc_no_ssl_verify');
delete_site_option('pp_wczc_no_ssl_verify');
delete_option('pp_wczc_add_contacts');
delete_site_option('pp_wczc_add_contacts');
delete_option('pp_wczc_update_contacts');
delete_site_option('pp_wczc_update_contacts');
delete_option('pp_wczc_contacts_lead_source');
delete_site_option('pp_wczc_contacts_lead_source');
delete_option('pp_wczc_add_leads');
delete_site_option('pp_wczc_add_leads');
delete_option('pp_wczc_update_leads');
delete_site_option('pp_wczc_update_leads');
delete_option('pp_wczc_leads_lead_source');
delete_site_option('pp_wczc_leads_lead_source');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pp_wczc_zoho_fields_%', '_site_transient_pp_wczc_zoho_fields_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}


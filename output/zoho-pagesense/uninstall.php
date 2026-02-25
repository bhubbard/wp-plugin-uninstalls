<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ZPWS_ZOHO_PAGESENSE_domname');
delete_site_option('ZPWS_ZOHO_PAGESENSE_domname');
delete_option('ZPWS_ZOHO_PAGESENSE_client_id');
delete_site_option('ZPWS_ZOHO_PAGESENSE_client_id');
delete_option('ZPWS_ZOHO_PAGESENSE_client_secret');
delete_site_option('ZPWS_ZOHO_PAGESENSE_client_secret');
delete_option('ZPWS_ZOHO_PAGESENSE_script_updated');
delete_site_option('ZPWS_ZOHO_PAGESENSE_script_updated');
delete_option('ZPWS_ZOHO_PAGESENSE_wc_token');
delete_site_option('ZPWS_ZOHO_PAGESENSE_wc_token');
delete_option('ZPWS_ZOHO_PAGESENSE_error_msg');
delete_site_option('ZPWS_ZOHO_PAGESENSE_error_msg');
delete_option('ZPWS_ZOHO_PAGESENSE_token_details');
delete_site_option('ZPWS_ZOHO_PAGESENSE_token_details');
delete_option('ZPWS_ZOHO_PAGESENSE_connect_time');
delete_site_option('ZPWS_ZOHO_PAGESENSE_connect_time');
delete_option('ZPWS_ZOHO_PAGESENSE_user_email');
delete_site_option('ZPWS_ZOHO_PAGESENSE_user_email');
delete_option('ZPWS_ZOHO_PAGESENSE_portal_details');
delete_site_option('ZPWS_ZOHO_PAGESENSE_portal_details');
delete_option('ZPWS_ZOHO_PAGESENSE_project_details');
delete_site_option('ZPWS_ZOHO_PAGESENSE_project_details');
delete_option('ZPWS_ZOHO_PAGESENSE_custom_script_data');
delete_site_option('ZPWS_ZOHO_PAGESENSE_custom_script_data');


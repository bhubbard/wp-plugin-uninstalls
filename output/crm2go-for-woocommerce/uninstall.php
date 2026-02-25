<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('c2g_wcc_crm2go_api_url');
delete_site_option('c2g_wcc_crm2go_api_url');
delete_option('c2g_wcc_crm2go_api_token');
delete_site_option('c2g_wcc_crm2go_api_token');
delete_option('c2g_wcc_crm2go_email');
delete_site_option('c2g_wcc_crm2go_email');
delete_option('c2g_wcc_crm2go_slang');
delete_site_option('c2g_wcc_crm2go_slang');
delete_option('c2g_wcc_crm2go_usuario');
delete_site_option('c2g_wcc_crm2go_usuario');
delete_option('c2g_wcc_crm2go_nombreCompleto');
delete_site_option('c2g_wcc_crm2go_nombreCompleto');
delete_option('c2g_wcc_add_contacts');
delete_site_option('c2g_wcc_add_contacts');
delete_option('c2g_wcc_update_contacts');
delete_site_option('c2g_wcc_update_contacts');
delete_option('c2g_wcc_contacts_lead_source');
delete_site_option('c2g_wcc_contacts_lead_source');
delete_option('c2g_wcc_add_order_details');
delete_site_option('c2g_wcc_add_order_details');
delete_option('c2g_wcc_add_order_notify');
delete_site_option('c2g_wcc_add_order_notify');


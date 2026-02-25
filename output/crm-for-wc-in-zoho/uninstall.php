<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bitformpro_integrate_key_data');
delete_site_option('bitformpro_integrate_key_data');
delete_option('bitform_secret_api_key');
delete_site_option('bitform_secret_api_key');
delete_option('bit_wc_zoho_crm_installed');
delete_site_option('bit_wc_zoho_crm_installed');
delete_option('bit_wc_zoho_crm_version');
delete_site_option('bit_wc_zoho_crm_version');


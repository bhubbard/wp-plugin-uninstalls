<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_ddf_thanks_page');
delete_site_option('_ddf_thanks_page');
delete_option('_ddf_error_page');
delete_site_option('_ddf_error_page');
delete_option('_ddf_paypal_sandbox');
delete_site_option('_ddf_paypal_sandbox');
delete_option('_ddf_paypal_email');
delete_site_option('_ddf_paypal_email');
delete_option('_ddf_pro_api_username');
delete_site_option('_ddf_pro_api_username');
delete_option('_ddf_pro_api_password');
delete_site_option('_ddf_pro_api_password');
delete_option('_ddf_pro_api_singnature');
delete_site_option('_ddf_pro_api_singnature');
delete_option('_ddf_paypal_standard');
delete_site_option('_ddf_paypal_standard');
delete_option('_ddf_paypal_webisite_pro');
delete_site_option('_ddf_paypal_webisite_pro');
delete_option('_ddf_paypal_payflow');
delete_site_option('_ddf_paypal_payflow');
delete_option('_ddf_payflow_partner');
delete_site_option('_ddf_payflow_partner');
delete_option('_ddf_payflow_vendor');
delete_site_option('_ddf_payflow_vendor');
delete_option('_ddf_payflow_machantid');
delete_site_option('_ddf_payflow_machantid');
delete_option('_ddf_payflow_password');
delete_site_option('_ddf_payflow_password');
delete_option('_ddf_default_geteway');
delete_site_option('_ddf_default_geteway');
delete_option('_ddf_default_currency');
delete_site_option('_ddf_default_currency');


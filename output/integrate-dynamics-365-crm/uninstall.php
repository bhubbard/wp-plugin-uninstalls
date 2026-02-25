<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mo_dcrm_admin_email');
delete_site_option('mo_dcrm_admin_email');
delete_option('mo_dcrm_admin_password');
delete_site_option('mo_dcrm_admin_password');
delete_option('mo_dcrm_admin_customer_key');
delete_site_option('mo_dcrm_admin_customer_key');
delete_option('mo_dcrm_admin_api_key');
delete_site_option('mo_dcrm_admin_api_key');
delete_option('mo_dcrm_admin_phone');
delete_site_option('mo_dcrm_admin_phone');


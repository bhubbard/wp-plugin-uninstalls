<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cp_module_authtopupcp_account');
delete_site_option('cp_module_authtopupcp_account');
delete_option('cp_module_authtopupcp_transaction');
delete_site_option('cp_module_authtopupcp_transaction');
delete_option('cp_module_authtopupcp_sandbox');
delete_site_option('cp_module_authtopupcp_sandbox');
delete_option('cp_module_authtopupcp_currency');
delete_site_option('cp_module_authtopupcp_currency');
delete_option('cp_module_authtopupcp_item');
delete_site_option('cp_module_authtopupcp_item');
delete_option('cp_module_authtopupcp_cancel');
delete_site_option('cp_module_authtopupcp_cancel');
delete_option('cp_module_authtopupcp_thankyou');
delete_site_option('cp_module_authtopupcp_thankyou');
delete_option('cp_module_authtopupcp_price');
delete_site_option('cp_module_authtopupcp_price');
delete_option('cp_module_authtopupcp_min');
delete_site_option('cp_module_authtopupcp_min');
delete_option('cp_module_authtopupcp_form');
delete_site_option('cp_module_authtopupcp_form');


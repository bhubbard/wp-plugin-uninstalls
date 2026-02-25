<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sp_spl_payulatam_user');
delete_site_option('sp_spl_payulatam_user');
delete_option('sp_spl_payulatam_password');
delete_site_option('sp_spl_payulatam_password');
delete_option('sp_spl_payulatam_accountid');
delete_site_option('sp_spl_payulatam_accountid');
delete_option('sp_spl_payulatam_language');
delete_site_option('sp_spl_payulatam_language');


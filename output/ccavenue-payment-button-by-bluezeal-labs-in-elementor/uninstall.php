<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ele_cc_ave_merchant_id');
delete_site_option('ele_cc_ave_merchant_id');
delete_option('ele_cc_ave_working_key');
delete_site_option('ele_cc_ave_working_key');
delete_option('ele_cc_ave_access_code');
delete_site_option('ele_cc_ave_access_code');
delete_option('ele_cc_ave_redirect_page');
delete_site_option('ele_cc_ave_redirect_page');
delete_option('ele_cc_ave_payment_mode');
delete_site_option('ele_cc_ave_payment_mode');


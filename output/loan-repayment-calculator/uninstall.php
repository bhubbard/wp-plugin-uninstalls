<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lec_main_heading');
delete_site_option('lec_main_heading');
delete_option('lec_filecharge');
delete_site_option('lec_filecharge');
delete_option('lec_monthly_interest');
delete_site_option('lec_monthly_interest');


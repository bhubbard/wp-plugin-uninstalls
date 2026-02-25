<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cashbill_id');
delete_site_option('cashbill_id');
delete_option('cashbill_secret');
delete_site_option('cashbill_secret');
delete_option('cashbill_psc_id');
delete_site_option('cashbill_psc_id');
delete_option('cashbill_psc_secret');
delete_site_option('cashbill_psc_secret');
delete_option('cashbill_test');
delete_site_option('cashbill_test');
delete_option('cashbill_psc_mode');
delete_site_option('cashbill_psc_mode');


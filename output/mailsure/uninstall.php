<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailsure_do_activation_redirect');
delete_site_option('mailsure_do_activation_redirect');
delete_option('mailsure_latest_test_result');
delete_site_option('mailsure_latest_test_result');
delete_option('mailsure_initiated_on_demand_test');
delete_site_option('mailsure_initiated_on_demand_test');
delete_option('mailsure_new_data_flag');
delete_site_option('mailsure_new_data_flag');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wap_payment_status');
delete_site_option('wap_payment_status');
delete_option('wap_payment_data');
delete_site_option('wap_payment_data');
delete_option('wap_status');
delete_site_option('wap_status');


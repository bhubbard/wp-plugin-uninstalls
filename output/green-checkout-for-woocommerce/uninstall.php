<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpaks_gcfw_amount');
delete_site_option('wpaks_gcfw_amount');
delete_option('wpaks_gcfw_label_text');
delete_site_option('wpaks_gcfw_label_text');
delete_option('wpaks_gcfw_donation_link');
delete_site_option('wpaks_gcfw_donation_link');


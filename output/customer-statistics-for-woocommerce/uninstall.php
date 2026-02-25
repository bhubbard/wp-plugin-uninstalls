<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('customer_statistics_roles');
delete_site_option('customer_statistics_roles');
delete_option('customer_statistics_detailed_view');
delete_site_option('customer_statistics_detailed_view');


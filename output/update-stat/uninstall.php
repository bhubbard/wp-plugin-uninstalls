<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('up_number_of_days');
delete_site_option('up_number_of_days');
delete_option('up_puzo_cache');
delete_site_option('up_puzo_cache');
delete_option('up_puzo');
delete_site_option('up_puzo');


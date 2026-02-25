<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mars_sol_date_first_post_time');
delete_site_option('mars_sol_date_first_post_time');


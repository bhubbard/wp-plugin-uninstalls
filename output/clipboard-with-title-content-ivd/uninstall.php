<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('first_param');
delete_site_option('first_param');
delete_option('second_param');
delete_site_option('second_param');
delete_option('third_param');
delete_site_option('third_param');


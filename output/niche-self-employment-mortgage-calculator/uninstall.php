<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssmc_colour_1');
delete_site_option('ssmc_colour_1');
delete_option('ssmc_colour_2');
delete_site_option('ssmc_colour_2');
delete_option('ssmc_colour_3');
delete_site_option('ssmc_colour_3');


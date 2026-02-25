<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Gigya Wildfire for WordPress Settings');
delete_site_option('Gigya Wildfire for WordPress Settings');


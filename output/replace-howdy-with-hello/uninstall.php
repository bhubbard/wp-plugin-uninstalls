<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('od_removehowdy');
delete_site_option('od_removehowdy');
delete_option('od_removehowdytext');
delete_site_option('od_removehowdytext');


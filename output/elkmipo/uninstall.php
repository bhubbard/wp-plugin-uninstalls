<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elkmipo_min_items');
delete_site_option('elkmipo_min_items');
delete_option('elkmipo_multiple');
delete_site_option('elkmipo_multiple');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ignored_patterns');
delete_site_option('ignored_patterns');
delete_option('also_search');
delete_site_option('also_search');


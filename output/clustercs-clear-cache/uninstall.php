<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cache_url');
delete_site_option('cache_url');
delete_option('clear_error');
delete_site_option('clear_error');
delete_option('check_option');
delete_site_option('check_option');


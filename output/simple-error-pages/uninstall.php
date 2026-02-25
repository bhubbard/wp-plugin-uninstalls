<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_error_pages_installed');
delete_site_option('simple_error_pages_installed');
delete_option('simple_error_pages');
delete_site_option('simple_error_pages');


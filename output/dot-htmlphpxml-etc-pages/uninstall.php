<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dot_pages_enable');
delete_site_option('dot_pages_enable');
delete_option('dot_pages_slug');
delete_site_option('dot_pages_slug');
delete_option('pages_mode');
delete_site_option('pages_mode');
delete_option('dot_pages_mode');
delete_site_option('dot_pages_mode');


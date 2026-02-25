<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embedder_scrollmethod');
delete_site_option('embedder_scrollmethod');
delete_option('embedder_scrolling');
delete_site_option('embedder_scrolling');
delete_option('embedder_class');
delete_site_option('embedder_class');
delete_option('embedder_border');
delete_site_option('embedder_border');
delete_option('embedder_style');
delete_site_option('embedder_style');


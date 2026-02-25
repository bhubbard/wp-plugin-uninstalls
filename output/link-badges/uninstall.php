<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('link-badges');
delete_site_option('link-badges');
delete_option('_link_badges__file_sizes');
delete_site_option('_link_badges__file_sizes');


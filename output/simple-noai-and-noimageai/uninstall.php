<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('noai_general_options');
delete_site_option('noai_general_options');
delete_option('noai_page_options');
delete_site_option('noai_page_options');
delete_option('noai_robots_options');
delete_site_option('noai_robots_options');


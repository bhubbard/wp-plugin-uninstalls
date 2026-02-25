<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('multisite_Latest_Posts_Widget');
delete_site_option('multisite_Latest_Posts_Widget');


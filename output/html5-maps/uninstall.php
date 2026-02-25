<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('freehtml5map_options');
delete_site_option('freehtml5map_options');
delete_option('freehtml5map_notifications');
delete_site_option('freehtml5map_notifications');


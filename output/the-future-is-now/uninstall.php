<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('futurenow_show_admin_as_published');
delete_site_option('futurenow_show_admin_as_published');
delete_option('futurenow_show_future_in_archives');
delete_site_option('futurenow_show_future_in_archives');
delete_option('futurenow_show_future_in_calendar');
delete_site_option('futurenow_show_future_in_calendar');
delete_option('futurenow_post_types');
delete_site_option('futurenow_post_types');


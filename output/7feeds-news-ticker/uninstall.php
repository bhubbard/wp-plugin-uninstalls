<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp7feeds_options');
delete_site_option('wp7feeds_options');
delete_option('widget_7feeds-widget');
delete_site_option('widget_7feeds-widget');


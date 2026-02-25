<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_wp_autoexpirewidget');
delete_site_option('widget_wp_autoexpirewidget');


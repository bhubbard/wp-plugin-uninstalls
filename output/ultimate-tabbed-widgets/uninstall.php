<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('utw_widget_areas');
delete_site_option('utw_widget_areas');
delete_option('utw_disable_theme');
delete_site_option('utw_disable_theme');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slide_in_popup');
delete_site_option('slide_in_popup');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('widget_slideins');
delete_site_option('widget_slideins');


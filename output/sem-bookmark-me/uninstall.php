<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_bookmark_me');
delete_site_option('widget_bookmark_me');
delete_option('widget_contexts');
delete_site_option('widget_contexts');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');


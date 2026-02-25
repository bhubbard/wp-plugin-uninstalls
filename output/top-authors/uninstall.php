<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ta_version');
delete_site_option('ta_version');
delete_option('widget_top_authors');
delete_site_option('widget_top_authors');
delete_option('widget_top-authors');
delete_site_option('widget_top-authors');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');


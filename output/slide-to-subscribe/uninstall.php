<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s2s_widget_id');
delete_site_option('s2s_widget_id');
delete_option('s2s_widget_height');
delete_site_option('s2s_widget_height');
delete_option('s2s_widget_width');
delete_site_option('s2s_widget_width');
delete_option('s2s_display_posts');
delete_site_option('s2s_display_posts');
delete_option('s2s_display_floating');
delete_site_option('s2s_display_floating');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abd_dwm_user_roles');
delete_site_option('abd_dwm_user_roles');
delete_option('abd_dwm_show_widgets');
delete_site_option('abd_dwm_show_widgets');
delete_option('abd_dwm_widget_content');
delete_site_option('abd_dwm_widget_content');
delete_option('abd_dwm_widget_title');
delete_site_option('abd_dwm_widget_title');
delete_option('abd_dwm_avail_dashboard_widgets');
delete_site_option('abd_dwm_avail_dashboard_widgets');


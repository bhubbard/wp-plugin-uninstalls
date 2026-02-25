<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssn_general_settings');
delete_site_option('ssn_general_settings');
delete_option('dropdown_css');
delete_site_option('dropdown_css');
delete_option('custom_css');
delete_site_option('custom_css');
delete_option('blog_post_links');
delete_site_option('blog_post_links');
delete_option('target_attr');
delete_site_option('target_attr');
delete_option('simple_sidenav');
delete_site_option('simple_sidenav');
delete_option('widget_simple_sidenav');
delete_site_option('widget_simple_sidenav');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');


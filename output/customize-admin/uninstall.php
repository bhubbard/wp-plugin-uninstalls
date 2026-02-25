<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ca_logo_file');
delete_site_option('ca_logo_file');
delete_option('ca_logo_url');
delete_site_option('ca_logo_url');
delete_option('ca_login_background_color');
delete_site_option('ca_login_background_color');
delete_option('ca_custom_css');
delete_site_option('ca_custom_css');
delete_option('ca_remove_meta_generator');
delete_site_option('ca_remove_meta_generator');
delete_option('ca_remove_meta_rsd');
delete_site_option('ca_remove_meta_rsd');
delete_option('ca_remove_meta_wlw');
delete_site_option('ca_remove_meta_wlw');
delete_option('ca_remove_rss_links');
delete_site_option('ca_remove_rss_links');
delete_option('ca_remove_dashboard_site_health_status');
delete_site_option('ca_remove_dashboard_site_health_status');
delete_option('ca_remove_dashboard_at_a_glance');
delete_site_option('ca_remove_dashboard_at_a_glance');
delete_option('ca_remove_dashboard_activity');
delete_site_option('ca_remove_dashboard_activity');
delete_option('ca_remove_dashboard_quick_press');
delete_site_option('ca_remove_dashboard_quick_press');
delete_option('ca_remove_dashboard_wordpress_news');
delete_site_option('ca_remove_dashboard_wordpress_news');
delete_option('ca_remove_dashboard_plugins');
delete_site_option('ca_remove_dashboard_plugins');
delete_option('ca_remove_dashboard_wordpress_other');
delete_site_option('ca_remove_dashboard_wordpress_other');


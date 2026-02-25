<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sb_plugin_options');
delete_site_option('sb_plugin_options');
delete_option('sb_sitemap_last_refresh');
delete_site_option('sb_sitemap_last_refresh');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('sb_widget_size_low');
delete_site_option('sb_widget_size_low');
delete_option('sb_widget_size_high');
delete_site_option('sb_widget_size_high');
delete_option('sb_widget_price_low');
delete_site_option('sb_widget_price_low');
delete_option('sb_widget_price_high');
delete_site_option('sb_widget_price_high');

// Delete Transients
delete_transient('sb_about_page_activated');
delete_site_transient('sb_about_page_activated');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sitemap_post_list');
delete_site_option('sitemap_post_list');
delete_option('sitemap_cat_list');
delete_site_option('sitemap_cat_list');
delete_option('sitemap_hide_post');
delete_site_option('sitemap_hide_post');
delete_option('sitemap_hide_cat');
delete_site_option('sitemap_hide_cat');
delete_option('cst_settings_arr');
delete_site_option('cst_settings_arr');
delete_option('cst_admin_css_setting');
delete_site_option('cst_admin_css_setting');
delete_option('cst_sitemap_column_setting');
delete_site_option('cst_sitemap_column_setting');


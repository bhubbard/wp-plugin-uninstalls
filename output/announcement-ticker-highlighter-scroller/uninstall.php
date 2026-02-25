<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('g_aths_width');
delete_site_option('g_aths_width');
delete_option('g_aths_height');
delete_site_option('g_aths_height');
delete_option('g_aths_css');
delete_site_option('g_aths_css');
delete_option('g_aths_delay');
delete_site_option('g_aths_delay');
delete_option('g_aths_speed');
delete_site_option('g_aths_speed');
delete_option('g_aths_highlightcolor');
delete_site_option('g_aths_highlightcolor');
delete_option('g_aths_textcolor');
delete_site_option('g_aths_textcolor');
delete_option('g_aths_title');
delete_site_option('g_aths_title');
delete_option('g_aths_title_display');
delete_site_option('g_aths_title_display');


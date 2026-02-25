<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('total_views_total');
delete_site_option('total_views_total');
delete_option('total_views_label');
delete_site_option('total_views_label');
delete_option('total_views_bold');
delete_site_option('total_views_bold');
delete_option('total_views_italic');
delete_site_option('total_views_italic');
delete_option('total_views_underline');
delete_site_option('total_views_underline');
delete_option('total_views_color');
delete_site_option('total_views_color');


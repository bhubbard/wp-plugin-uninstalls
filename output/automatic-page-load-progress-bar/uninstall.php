<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aplpb_option_checkbox_page');
delete_site_option('aplpb_option_checkbox_page');
delete_option('aplpb_option_checkbox_post');
delete_site_option('aplpb_option_checkbox_post');
delete_option('aplpb_option_checkbox_custom');
delete_site_option('aplpb_option_checkbox_custom');
delete_option('aplpb_option_theme');
delete_site_option('aplpb_option_theme');
delete_option('aplpb_option_color');
delete_site_option('aplpb_option_color');
delete_option('aplpb_option_query_desktop');
delete_site_option('aplpb_option_query_desktop');
delete_option('aplpb_option_query_tablet');
delete_site_option('aplpb_option_query_tablet');
delete_option('aplpb_option_query_mobile');
delete_site_option('aplpb_option_query_mobile');


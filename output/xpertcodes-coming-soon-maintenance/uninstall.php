<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('title_color');
delete_site_option('title_color');
delete_option('subtitle_color');
delete_site_option('subtitle_color');
delete_option('countdown_color');
delete_site_option('countdown_color');
delete_option('nav_color');
delete_site_option('nav_color');
delete_option('menu_toggle_label_color');
delete_site_option('menu_toggle_label_color');
delete_option('copyright_color');
delete_site_option('copyright_color');
delete_option('mdxcsp_enable_coming_soon');
delete_site_option('mdxcsp_enable_coming_soon');
delete_option('mdxcsp_selected_template');
delete_site_option('mdxcsp_selected_template');
delete_option('mdxcsp_template_settings');
delete_site_option('mdxcsp_template_settings');


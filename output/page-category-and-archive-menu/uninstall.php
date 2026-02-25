<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pgcatmenu_pagelink_id');
delete_site_option('pgcatmenu_pagelink_id');
delete_option('pgcatmenu_pagelist_id');
delete_site_option('pgcatmenu_pagelist_id');
delete_option('pgcatmenu_catlink_id');
delete_site_option('pgcatmenu_catlink_id');
delete_option('pgcatmenu_categorylist_id');
delete_site_option('pgcatmenu_categorylist_id');
delete_option('pgcatmenu_arclink_id');
delete_site_option('pgcatmenu_arclink_id');
delete_option('pgcatmenu_archivelist_id');
delete_site_option('pgcatmenu_archivelist_id');
delete_option('pgcatmenu_font_size');
delete_site_option('pgcatmenu_font_size');
delete_option('pgcatmenu_line_spacing');
delete_site_option('pgcatmenu_line_spacing');
delete_option('pgcatmenu_border_size');
delete_site_option('pgcatmenu_border_size');
delete_option('pgcatmenu_border_color');
delete_site_option('pgcatmenu_border_color');
delete_option('pgcatmenu_padding_size_x');
delete_site_option('pgcatmenu_padding_size_x');
delete_option('pgcatmenu_padding_size_y');
delete_site_option('pgcatmenu_padding_size_y');
delete_option('pgcatmenu_padding_size_c');
delete_site_option('pgcatmenu_padding_size_c');
delete_option('pgcatmenu_background_color');
delete_site_option('pgcatmenu_background_color');
delete_option('pgcatmenu_menulink_color');
delete_site_option('pgcatmenu_menulink_color');
delete_option('pgcatmenu_menulink_color_v');
delete_site_option('pgcatmenu_menulink_color_v');
delete_option('pgcatmenu_menulink_color_h');
delete_site_option('pgcatmenu_menulink_color_h');


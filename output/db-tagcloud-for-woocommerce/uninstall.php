<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('db_tagcloud_cols');
delete_site_option('db_tagcloud_cols');
delete_option('db_tagcloud_fontsize');
delete_site_option('db_tagcloud_fontsize');
delete_option('db_tagcloud_fontweight');
delete_site_option('db_tagcloud_fontweight');
delete_option('db_tagcloud_borderwidth');
delete_site_option('db_tagcloud_borderwidth');
delete_option('db_tagcloud_underlined');
delete_site_option('db_tagcloud_underlined');
delete_option('db_tagcloud_underlined_hover');
delete_site_option('db_tagcloud_underlined_hover');
delete_option('db_tagcloud_color');
delete_site_option('db_tagcloud_color');
delete_option('db_tagcloud_color_hover');
delete_site_option('db_tagcloud_color_hover');
delete_option('db_tagcloud_background');
delete_site_option('db_tagcloud_background');
delete_option('db_tagcloud_background_hover');
delete_site_option('db_tagcloud_background_hover');


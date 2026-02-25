<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mit3xxx_toolbar_account');
delete_site_option('mit3xxx_toolbar_account');
delete_option('mit3xxx_toolbar_website');
delete_site_option('mit3xxx_toolbar_website');
delete_option('mit3xxx_toolbar_rss');
delete_site_option('mit3xxx_toolbar_rss');
delete_option('mit3xxx_toolbar_theme');
delete_site_option('mit3xxx_toolbar_theme');
delete_option('mit3xxx_toolbar_position');
delete_site_option('mit3xxx_toolbar_position');
delete_option('mit3xxx_toolbar_twitter_account');
delete_site_option('mit3xxx_toolbar_twitter_account');
delete_option('mit3xxx_toolbar_show_back_to_top');
delete_site_option('mit3xxx_toolbar_show_back_to_top');
delete_option('mit3xxx_toolbar_show_back_to_bottom');
delete_site_option('mit3xxx_toolbar_show_back_to_bottom');
delete_option('mit3xxx_toolbar_show_twitter');
delete_site_option('mit3xxx_toolbar_show_twitter');
delete_option('mit3xxx_toolbar_show_facebook');
delete_site_option('mit3xxx_toolbar_show_facebook');
delete_option('mit3xxx_toolbar_show_bookmarks');
delete_site_option('mit3xxx_toolbar_show_bookmarks');
delete_option('mit3xxx_toolbar_show_search');
delete_site_option('mit3xxx_toolbar_show_search');
delete_option('mit3xxx_toolbar_search_website');
delete_site_option('mit3xxx_toolbar_search_website');
delete_option('mit3xxx_toolbar_distance');
delete_site_option('mit3xxx_toolbar_distance');
delete_option('mit3xxx_toolbar_style');
delete_site_option('mit3xxx_toolbar_style');
delete_option('mit3xxx_toolbar_distance_from_position');
delete_site_option('mit3xxx_toolbar_distance_from_position');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jcorglrkn_plugin');
delete_site_option('jcorglrkn_plugin');
delete_option('jcorglrkn_theme');
delete_site_option('jcorglrkn_theme');
delete_option('jcorglrkn_next_post_label');
delete_site_option('jcorglrkn_next_post_label');
delete_option('jcorglrkn_previous_post_label');
delete_site_option('jcorglrkn_previous_post_label');
delete_option('jcorglrkn_posts_same_category');
delete_site_option('jcorglrkn_posts_same_category');
delete_option('jcorglrkn_exclude_categories');
delete_site_option('jcorglrkn_exclude_categories');
delete_option('jcorglrkn_minimum_screen_width');
delete_site_option('jcorglrkn_minimum_screen_width');
delete_option('jcorglrkn_linkback');
delete_site_option('jcorglrkn_linkback');
delete_option('jcorglrkn_linkback_text');
delete_site_option('jcorglrkn_linkback_text');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rb_enable_bar');
delete_site_option('rb_enable_bar');
delete_option('rb_background_color');
delete_site_option('rb_background_color');
delete_option('rb_foreground_color');
delete_site_option('rb_foreground_color');
delete_option('rb_background_opacity');
delete_site_option('rb_background_opacity');
delete_option('rb_bar_shadow');
delete_site_option('rb_bar_shadow');
delete_option('rb_bar_rounded');
delete_site_option('rb_bar_rounded');
delete_option('rb_bar_placement');
delete_site_option('rb_bar_placement');
delete_option('rb_bar_height');
delete_site_option('rb_bar_height');
delete_option('rb_show_single_post');
delete_site_option('rb_show_single_post');
delete_option('rb_show_home_page');
delete_site_option('rb_show_home_page');
delete_option('rb_show_single_page');
delete_site_option('rb_show_single_page');
delete_option('rb_show_archive');
delete_site_option('rb_show_archive');


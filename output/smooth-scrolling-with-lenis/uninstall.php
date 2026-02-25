<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('miga_smooth_scrolling_exclude_page');
delete_site_option('miga_smooth_scrolling_exclude_page');
delete_option('miga_smooth_scrolling_disable_wheel');
delete_site_option('miga_smooth_scrolling_disable_wheel');
delete_option('miga_smooth_scrolling_anchor_offset');
delete_site_option('miga_smooth_scrolling_anchor_offset');
delete_option('miga_smooth_scrolling_lerp');
delete_site_option('miga_smooth_scrolling_lerp');
delete_option('miga_smooth_scrolling_duration');
delete_site_option('miga_smooth_scrolling_duration');
delete_option('miga_smooth_scrolling_anchor_links');
delete_site_option('miga_smooth_scrolling_anchor_links');
delete_option('miga_smooth_scrolling_gsap');
delete_site_option('miga_smooth_scrolling_gsap');


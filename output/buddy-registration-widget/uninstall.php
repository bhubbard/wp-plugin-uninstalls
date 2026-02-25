<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buddy_member_cover');
delete_site_option('buddy_member_cover');
delete_option('buddy_group_cover');
delete_site_option('buddy_group_cover');
delete_option('buddy_hide_activity_tab');
delete_site_option('buddy_hide_activity_tab');
delete_option('buddy_profile_image');
delete_site_option('buddy_profile_image');
delete_option('buddy_custom_widget_template');
delete_site_option('buddy_custom_widget_template');
delete_option('buddy_custom_shortcode_template');
delete_site_option('buddy_custom_shortcode_template');


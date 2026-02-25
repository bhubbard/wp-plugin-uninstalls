<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pbp_screen_options');
delete_site_option('pbp_screen_options');
delete_option('pbp_help_tab');
delete_site_option('pbp_help_tab');
delete_option('pbp_right_now');
delete_site_option('pbp_right_now');
delete_option('pbp_recent_comments');
delete_site_option('pbp_recent_comments');
delete_option('pbp_recent_drafts');
delete_site_option('pbp_recent_drafts');
delete_option('pbp_remove_plugins');
delete_site_option('pbp_remove_plugins');
delete_option('pbp_incoming_links');
delete_site_option('pbp_incoming_links');
delete_option('pbp_remove_quickpress');
delete_site_option('pbp_remove_quickpress');
delete_option('pbp_remove_wpblog');
delete_site_option('pbp_remove_wpblog');
delete_option('pbp_other_wp_news');
delete_site_option('pbp_other_wp_news');
delete_option('pbp_remove_admin_bar');
delete_site_option('pbp_remove_admin_bar');
delete_option('pbp_remove_wp_logo');
delete_site_option('pbp_remove_wp_logo');
delete_option('pbp_remove_about_wplink');
delete_site_option('pbp_remove_about_wplink');
delete_option('pbp_remove_wporg_link');
delete_site_option('pbp_remove_wporg_link');
delete_option('pbp_remove_doc_link');
delete_site_option('pbp_remove_doc_link');
delete_option('pbp_remove_support_link');
delete_site_option('pbp_remove_support_link');
delete_option('pbp_remove_feedback_link');
delete_site_option('pbp_remove_feedback_link');
delete_option('pbp_login_logo');
delete_site_option('pbp_login_logo');
delete_option('pbp_custom_login_message');
delete_site_option('pbp_custom_login_message');
delete_option('pbp_custom_reg_message');
delete_site_option('pbp_custom_reg_message');
delete_option('bdc_ip_lock_enable');
delete_site_option('bdc_ip_lock_enable');
delete_option('pbp_post_views');
delete_site_option('pbp_post_views');
delete_option('pbp_view_in_editor');
delete_site_option('pbp_view_in_editor');
delete_option('pbp_post_view_pos');
delete_site_option('pbp_post_view_pos');


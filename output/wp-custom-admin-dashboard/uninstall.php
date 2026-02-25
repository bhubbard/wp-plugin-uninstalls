<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cad_login_logo');
delete_site_option('cad_login_logo');
delete_option('cad_login_bg');
delete_site_option('cad_login_bg');
delete_option('cad_login_logo_url');
delete_site_option('cad_login_logo_url');
delete_option('cad_login_logo_title');
delete_site_option('cad_login_logo_title');
delete_option('cad_login_bg_color');
delete_site_option('cad_login_bg_color');
delete_option('cad_login_message');
delete_site_option('cad_login_message');
delete_option('cad_login_message_color');
delete_site_option('cad_login_message_color');
delete_option('cad_login_btn_color');
delete_site_option('cad_login_btn_color');
delete_option('cad_remove_help');
delete_site_option('cad_remove_help');
delete_option('cad_remove_screen_options');
delete_site_option('cad_remove_screen_options');
delete_option('cad_widgets_welcome');
delete_site_option('cad_widgets_welcome');
delete_option('cad_widgets_glance');
delete_site_option('cad_widgets_glance');
delete_option('cad_widgets_activity');
delete_site_option('cad_widgets_activity');
delete_option('cad_widgets_draft');
delete_site_option('cad_widgets_draft');
delete_option('cad_widgets_quick_draft');
delete_site_option('cad_widgets_quick_draft');
delete_option('cad_widgets_wp_news');
delete_site_option('cad_widgets_wp_news');
delete_option('cad_widgets_plugins');
delete_site_option('cad_widgets_plugins');
delete_option('cad_remove_wp_topbar');
delete_site_option('cad_remove_wp_topbar');
delete_option('cad_remove_wp_edit_topbar');
delete_site_option('cad_remove_wp_edit_topbar');
delete_option('cad_remove_new_topbar');
delete_site_option('cad_remove_new_topbar');
delete_option('cad_change_howdy_topbar');
delete_site_option('cad_change_howdy_topbar');
delete_option('cad_wp_thankyou_footer_disable');
delete_site_option('cad_wp_thankyou_footer_disable');
delete_option('cad_wp_thankyou_footer');
delete_site_option('cad_wp_thankyou_footer');
delete_option('cad_wp_version_disable');
delete_site_option('cad_wp_version_disable');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'show_welcome_panel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'show_welcome_panel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'show_welcome_panel' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'show_welcome_panel' ) );


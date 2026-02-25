<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icustomizer_version');
delete_site_option('icustomizer_version');
delete_option('icustomizer_options');
delete_site_option('icustomizer_options');
delete_option('icustomizer_custom_css_admin');
delete_site_option('icustomizer_custom_css_admin');
delete_option('icustomizer_custom_css_front');
delete_site_option('icustomizer_custom_css_front');
delete_option('icustomizer_custom_js_front');
delete_site_option('icustomizer_custom_js_front');
delete_option('icustomizer_widget_non_admin_enable');
delete_site_option('icustomizer_widget_non_admin_enable');
delete_option('icustomizer_widget_non_admin_title');
delete_site_option('icustomizer_widget_non_admin_title');
delete_option('icustomizer_widget_non_admin');
delete_site_option('icustomizer_widget_non_admin');
delete_option('icustomizer_widget_admin_enable');
delete_site_option('icustomizer_widget_admin_enable');
delete_option('icustomizer_widget_admin_title');
delete_site_option('icustomizer_widget_admin_title');
delete_option('icustomizer_widget_admin');
delete_site_option('icustomizer_widget_admin');
delete_option('icustomizer_remove_widget_welcome_wp');
delete_site_option('icustomizer_remove_widget_welcome_wp');
delete_option('icustomizer_remove_widget_news_wp');
delete_site_option('icustomizer_remove_widget_news_wp');
delete_option('icustomizer_remove_widget_resume_wp');
delete_site_option('icustomizer_remove_widget_resume_wp');
delete_option('icustomizer_remove_widget_activity_wp');
delete_site_option('icustomizer_remove_widget_activity_wp');
delete_option('icustomizer_remove_widget_quick_wp');
delete_site_option('icustomizer_remove_widget_quick_wp');
delete_option('icustomizer_text_visual_default');
delete_site_option('icustomizer_text_visual_default');
delete_option('icustomizer_remove_visual_editor');
delete_site_option('icustomizer_remove_visual_editor');
delete_option('icustomizer_behavior_tag_p_editor');
delete_site_option('icustomizer_behavior_tag_p_editor');
delete_option('icustomizer_shortcode_in_excerpt');
delete_site_option('icustomizer_shortcode_in_excerpt');
delete_option('icustomizer_wlwmanifest_link');
delete_site_option('icustomizer_wlwmanifest_link');
delete_option('icustomizer_wp_generator');
delete_site_option('icustomizer_wp_generator');
delete_option('icustomizer_wpml_generator');
delete_site_option('icustomizer_wpml_generator');
delete_option('icustomizer_enable_all_settings');
delete_site_option('icustomizer_enable_all_settings');
delete_option('icustomizer_hide_connection_errors');
delete_site_option('icustomizer_hide_connection_errors');
delete_option('icustomizer_remove_wp_adminbar');
delete_site_option('icustomizer_remove_wp_adminbar');
delete_option('icustomizer_remove_logo_wp_adminbar');
delete_site_option('icustomizer_remove_logo_wp_adminbar');
delete_option('icustomizer_remove_comment_wp_adminbar');
delete_site_option('icustomizer_remove_comment_wp_adminbar');
delete_option('icustomizer_remove_new_content_wp_adminbar');
delete_site_option('icustomizer_remove_new_content_wp_adminbar');
delete_option('icustomizer_remove_footer_admin');
delete_site_option('icustomizer_remove_footer_admin');
delete_option('icustomizer_remove_footer_admin_txt');
delete_site_option('icustomizer_remove_footer_admin_txt');
delete_option('icustomizer_remove_footer_version_admin');
delete_site_option('icustomizer_remove_footer_version_admin');
delete_option('icustomizer_remove_footer_version_admin_txt');
delete_site_option('icustomizer_remove_footer_version_admin_txt');
delete_option('icustomizer_login_background');
delete_site_option('icustomizer_login_background');
delete_option('icustomizer_login_logo');
delete_site_option('icustomizer_login_logo');
delete_option('icustomizer_login_logo_height');
delete_site_option('icustomizer_login_logo_height');
delete_option('icustomizer_login_form_radius');
delete_site_option('icustomizer_login_form_radius');
delete_option('icustomizer_login_form_bg_color');
delete_site_option('icustomizer_login_form_bg_color');
delete_option('icustomizer_login_form_color');
delete_site_option('icustomizer_login_form_color');
delete_option('icustomizer_login_title_link');
delete_site_option('icustomizer_login_title_link');
delete_option('icustomizer_login_href_link');
delete_site_option('icustomizer_login_href_link');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');


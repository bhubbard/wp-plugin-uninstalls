<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('easy_sticky_sidebar_settings');
delete_site_option('easy_sticky_sidebar_settings');
delete_option('easy_sticky_sidebar_default_attachment');
delete_site_option('easy_sticky_sidebar_default_attachment');
delete_option('wordpress_cta_design_template_images');
delete_site_option('wordpress_cta_design_template_images');
delete_option('easy_sticky_sidebar_version');
delete_site_option('easy_sticky_sidebar_version');
delete_option('easy_sticky_sidebar_migrated');
delete_site_option('easy_sticky_sidebar_migrated');
delete_option('SSuprydp_development');
delete_site_option('SSuprydp_development');
delete_option('SSuprydp_location');
delete_site_option('SSuprydp_location');
delete_option('SSuprydp_button_option_text');
delete_site_option('SSuprydp_button_option_text');
delete_option('SSuprydp_button_option_backg_color');
delete_site_option('SSuprydp_button_option_backg_color');
delete_option('SSuprydp_button_option_font');
delete_site_option('SSuprydp_button_option_font');
delete_option('SSuprydp_button_option_weight');
delete_site_option('SSuprydp_button_option_weight');
delete_option('SSuprydp_button_option_size');
delete_site_option('SSuprydp_button_option_size');
delete_option('SSuprydp_button_option_align');
delete_site_option('SSuprydp_button_option_align');
delete_option('SSuprydp_button_option_color');
delete_site_option('SSuprydp_button_option_color');
delete_option('SSuprydp_content_option_text');
delete_site_option('SSuprydp_content_option_text');
delete_option('SSuprydp_content_option_font');
delete_site_option('SSuprydp_content_option_font');
delete_option('SSuprydp_content_option_weight');
delete_site_option('SSuprydp_content_option_weight');
delete_option('SSuprydp_content_option_size');
delete_site_option('SSuprydp_content_option_size');
delete_option('SSuprydp_content_option_color');
delete_site_option('SSuprydp_content_option_color');
delete_option('SSuprydp_divider_option_color');
delete_site_option('SSuprydp_divider_option_color');
delete_option('SSuprydp_action_option_text');
delete_site_option('SSuprydp_action_option_text');
delete_option('SSuprydp_action_option_font');
delete_site_option('SSuprydp_action_option_font');
delete_option('SSuprydp_action_option_weight');
delete_site_option('SSuprydp_action_option_weight');
delete_option('SSuprydp_action_option_size');
delete_site_option('SSuprydp_action_option_size');
delete_option('SSuprydp_action_option_color');
delete_site_option('SSuprydp_action_option_color');
delete_option('SSuprydp_action_option_url');
delete_site_option('SSuprydp_action_option_url');
delete_option('SSuprydp_dis_mobile');
delete_site_option('SSuprydp_dis_mobile');
delete_option('SSuprydp_target_blank');
delete_site_option('SSuprydp_target_blank');
delete_option('SSuprydp_nofollow');
delete_site_option('SSuprydp_nofollow');
delete_option('SSuprydp_shrink');
delete_site_option('SSuprydp_shrink');
delete_option('SSuprydp_img_hideimg');
delete_site_option('SSuprydp_img_hideimg');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'easy_sticky_sidebar_attachment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'easy_sticky_sidebar_attachment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'easy_sticky_sidebar_attachment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'easy_sticky_sidebar_attachment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );


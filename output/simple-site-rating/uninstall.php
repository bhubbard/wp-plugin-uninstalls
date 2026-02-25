<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsmssr_posttype_settings_options');
delete_site_option('wsmssr_posttype_settings_options');
delete_option('wsmssr_question');
delete_site_option('wsmssr_question');
delete_option('wsmssr_thank_you_html');
delete_site_option('wsmssr_thank_you_html');
delete_option('wsmssr_thank_you_heading_html');
delete_site_option('wsmssr_thank_you_heading_html');
delete_option('wsmssr_icon_color_html');
delete_site_option('wsmssr_icon_color_html');
delete_option('wsmssr_icon_hover_color_html');
delete_site_option('wsmssr_icon_hover_color_html');
delete_option('wsmssr_fontawesome_toggle_html');
delete_site_option('wsmssr_fontawesome_toggle_html');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wsmssr_rating_avg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wsmssr_rating_avg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wsmssr_rating_avg' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wsmssr_rating_avg' ) );


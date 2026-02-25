<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_reviews_num_chars');
delete_site_option('plugin_reviews_num_chars');
delete_option('plugin_reviews_read_more_text');
delete_site_option('plugin_reviews_read_more_text');
delete_option('plugin_reviews_hide_nav_dots');
delete_site_option('plugin_reviews_hide_nav_dots');
delete_option('plugin_reviews_text_color');
delete_site_option('plugin_reviews_text_color');
delete_option('plugin_reviews_background_color');
delete_site_option('plugin_reviews_background_color');
delete_option('plugin_reviews_font_size');
delete_site_option('plugin_reviews_font_size');
delete_option('plugin_reviews_border_style');
delete_site_option('plugin_reviews_border_style');
delete_option('plugin_reviews_border_color');
delete_site_option('plugin_reviews_border_color');
delete_option('plugin_reviews_avatar_width');
delete_site_option('plugin_reviews_avatar_width');
delete_option('plugin_reviews_avatar_height');
delete_site_option('plugin_reviews_avatar_height');
delete_option('plugin_reviews_padding');
delete_site_option('plugin_reviews_padding');
delete_option('plugin_reviews_margin');
delete_site_option('plugin_reviews_margin');
delete_option('wr_reviews_flush_transient');
delete_site_option('wr_reviews_flush_transient');
delete_option('plugin_reviews_activation_time');
delete_site_option('plugin_reviews_activation_time');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'plugin_reviews_dismissed_starfish_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'plugin_reviews_dismissed_starfish_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'plugin_reviews_dismissed_starfish_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'plugin_reviews_dismissed_starfish_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'plugin_reviews_dismissed_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'plugin_reviews_dismissed_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'plugin_reviews_dismissed_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'plugin_reviews_dismissed_review_notice' ) );


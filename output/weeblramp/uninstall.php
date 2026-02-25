<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weeblramp_last_amp_suffix');
delete_site_option('weeblramp_last_amp_suffix');
delete_option('weeblramp_last_op_mode');
delete_site_option('weeblramp_last_op_mode');
delete_option('weeblramp_last_post_types_hash');
delete_site_option('weeblramp_last_post_types_hash');
delete_option('disqus_forum_url');
delete_site_option('disqus_forum_url');
delete_option('weeblramp_rewrite_rules_flush_required');
delete_site_option('weeblramp_rewrite_rules_flush_required');
delete_option('weeblramp_activation_plugin_manager_errors');
delete_site_option('weeblramp_activation_plugin_manager_errors');
delete_option('weeblramp_current_stylesheet');
delete_site_option('weeblramp_current_stylesheet');
delete_option('weeblramp_current_template');
delete_site_option('weeblramp_current_template');
delete_option('woocommerce_enable_review_rating');
delete_site_option('woocommerce_enable_review_rating');
delete_option('wblib_logging_config');
delete_site_option('wblib_logging_config');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wbamp_enable_amp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wbamp_enable_amp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wbamp_enable_amp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wbamp_enable_amp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rating' ) );


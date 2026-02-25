<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_pocketurl_link_redirection');
delete_site_option('wp_pocketurl_link_redirection');
delete_option('wp_pocketurl_link_collect_data');
delete_site_option('wp_pocketurl_link_collect_data');
delete_option('wp_pocketurl_link_prefix');
delete_site_option('wp_pocketurl_link_prefix');
delete_option('wp_pocketurl_link_exclude_cat');
delete_site_option('wp_pocketurl_link_exclude_cat');
delete_option('wp_pocketurl_link_enable_auto');
delete_site_option('wp_pocketurl_link_enable_auto');
delete_option('wp_pocketurl_link_exclude_word');
delete_site_option('wp_pocketurl_link_exclude_word');
delete_option('wp_pocketurl_link_require_word');
delete_site_option('wp_pocketurl_link_require_word');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('wp_pocketurl_flush_rewrite_rules_flag');
delete_site_option('wp_pocketurl_flush_rewrite_rules_flag');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_option_name' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_pocketurl_link_nofollow');
delete_site_option('wp_pocketurl_link_nofollow');
delete_option('wp_pocketurl_link_tracking_code');
delete_site_option('wp_pocketurl_link_tracking_code');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_poketurlnew_post_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_pocketurl_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_pocketurl_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_pocketurl_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_pocketurl_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_pocketurl_link_custom_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_pocketurl_link_custom_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_pocketurl_link_custom_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_pocketurl_link_custom_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_pocketurl_link_redirection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_pocketurl_link_redirection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_pocketurl_link_redirection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_pocketurl_link_redirection' ) );


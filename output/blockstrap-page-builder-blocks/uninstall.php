<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ayecode-ui-settings');
delete_site_option('ayecode-ui-settings');
delete_option('blockstrap_recaptcha_keys');
delete_site_option('blockstrap_recaptcha_keys');
delete_option('blockstrap_blocks_compatibility_notice');
delete_site_option('blockstrap_blocks_compatibility_notice');
delete_option('show_comments_cookies_opt_in');
delete_site_option('show_comments_cookies_opt_in');
delete_option('ayecode_connect_blog_token');
delete_site_option('ayecode_connect_blog_token');
delete_option('aui_options');
delete_site_option('aui_options');
delete_option('wp-font-awesome-settings');
delete_site_option('wp-font-awesome-settings');
delete_option('rgmk_google_map_api_key');
delete_site_option('rgmk_google_map_api_key');

// Delete Transients
delete_transient('wp-font-awesome-settings-version');
delete_site_transient('wp-font-awesome-settings-version');

// Clear Cron Jobs
wp_clear_scheduled_hook('geodir_plugin_background_installer');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bs_term_bg_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bs_term_bg_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bs_term_bg_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bs_term_bg_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bs_term_text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bs_term_text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bs_term_text_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bs_term_text_color' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pzz_fullname');
delete_site_option('pzz_fullname');
delete_option('pzz_username');
delete_site_option('pzz_username');
delete_option('pzz_id');
delete_site_option('pzz_id');
delete_option('pzz_settings');
delete_site_option('pzz_settings');
delete_option('pzz_logged_in_user');
delete_site_option('pzz_logged_in_user');
delete_option('pzz_tracking_only_categories');
delete_site_option('pzz_tracking_only_categories');
delete_option('pzz_tracking_only_on_posts_before');
delete_site_option('pzz_tracking_only_on_posts_before');
delete_option('pzz_indexable_javascript');
delete_site_option('pzz_indexable_javascript');
delete_option('pzz_link_summary_border_color');
delete_site_option('pzz_link_summary_border_color');
delete_option('pzz_link_summary_border_width');
delete_site_option('pzz_link_summary_border_width');
delete_option('pzz_link_summary_border_padding');
delete_site_option('pzz_link_summary_border_padding');
delete_option('pzz_link_summary_width');
delete_site_option('pzz_link_summary_width');
delete_option('pzz_link_summary_link_color');
delete_site_option('pzz_link_summary_link_color');
delete_option('pzz_link_summary_enabled');
delete_site_option('pzz_link_summary_enabled');
delete_option('pzz_link_summary_position');
delete_site_option('pzz_link_summary_position');
delete_option('pzz_link_summary_layout_type');
delete_site_option('pzz_link_summary_layout_type');
delete_option('pzz_link_summary_tag_background_color');
delete_site_option('pzz_link_summary_tag_background_color');
delete_option('pzz_link_summary_use_title_text');
delete_site_option('pzz_link_summary_use_title_text');
delete_option('linkPizza_Manager_settings');
delete_site_option('linkPizza_Manager_settings');
delete_option('pzz_disabled_categories');
delete_site_option('pzz_disabled_categories');

// Clear Cron Jobs
wp_clear_scheduled_hook('linkpizza_refresh_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_linkpizza_disabled_domains' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_linkpizza_disabled_domains' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_linkpizza_disabled_domains' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_linkpizza_disabled_domains' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_linkpizza_tracking_only_domains' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_linkpizza_tracking_only_domains' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_linkpizza_tracking_only_domains' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_linkpizza_tracking_only_domains' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_linkPizza_tracking_only' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_linkPizza_tracking_only' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_linkPizza_tracking_only' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_linkPizza_tracking_only' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_linkPizza_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_linkPizza_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_linkPizza_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_linkPizza_disabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pzz_link_summary_disabled_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pzz_link_summary_disabled_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pzz_link_summary_disabled_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pzz_link_summary_disabled_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_linkpizza_disabled_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_linkpizza_disabled_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_linkpizza_disabled_urls' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_linkpizza_disabled_urls' ) );


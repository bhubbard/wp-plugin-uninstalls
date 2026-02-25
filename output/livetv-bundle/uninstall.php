<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('livetv_activate_creation_role');
delete_site_option('livetv_activate_creation_role');
delete_option('livetv_defaut_role_wordpress');
delete_site_option('livetv_defaut_role_wordpress');
delete_option('livetv_users_role_selected');
delete_site_option('livetv_users_role_selected');
delete_option('livetv_h3');
delete_site_option('livetv_h3');
delete_option('livetv_view_offline');
delete_site_option('livetv_view_offline');
delete_option('livetv_effect');
delete_site_option('livetv_effect');
delete_option('livetv_cache');
delete_site_option('livetv_cache');
delete_option('livetv_irc');
delete_site_option('livetv_irc');
delete_option('livetv_twitter');
delete_site_option('livetv_twitter');
delete_option('livetv_facebook');
delete_site_option('livetv_facebook');
delete_option('livetv_qtip');
delete_site_option('livetv_qtip');
delete_option('livetv_3col');
delete_site_option('livetv_3col');
delete_option('livetv_types_order');
delete_site_option('livetv_types_order');
delete_option('livetv_disable_normal');
delete_site_option('livetv_disable_normal');
delete_option('livetv_span_color');
delete_site_option('livetv_span_color');
delete_option('livetv_irc_own3d');
delete_site_option('livetv_irc_own3d');
delete_option('livetv_irc_twitch');
delete_site_option('livetv_irc_twitch');
delete_option('livetv_irc_justin');
delete_site_option('livetv_irc_justin');
delete_option('livetv_width');
delete_site_option('livetv_width');
delete_option('livetv_height');
delete_site_option('livetv_height');
delete_option('livetv_color');
delete_site_option('livetv_color');
delete_option('livetv_visibility');
delete_site_option('livetv_visibility');
delete_option('livetv_message');
delete_site_option('livetv_message');
delete_option('livetv_registration');
delete_site_option('livetv_registration');
delete_option('livetv_autoplay');
delete_site_option('livetv_autoplay');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'livetv_irc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('livetv_easy_install');
delete_site_option('livetv_easy_install');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'count_live_own3d' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'count_live_own3d' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'count_live_own3d' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'count_live_own3d' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'count_live_justin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'count_live_justin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'count_live_justin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'count_live_justin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'count_live_twitch' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'count_live_twitch' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'count_live_twitch' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'count_live_twitch' ) );


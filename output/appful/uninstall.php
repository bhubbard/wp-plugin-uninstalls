<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('appful_session_id');
delete_site_option('appful_session_id');
delete_option('appful_disable');
delete_site_option('appful_disable');
delete_option('appful_do_redirect');
delete_site_option('appful_do_redirect');
delete_option('appful_been_installed');
delete_site_option('appful_been_installed');
delete_option('appful_blog_id');
delete_site_option('appful_blog_id');
delete_option('appful_universallinks_ios');
delete_site_option('appful_universallinks_ios');
delete_option('appful_universallinks_android');
delete_site_option('appful_universallinks_android');
delete_option('appful_invalid_session');
delete_site_option('appful_invalid_session');
delete_option('appful_ssl_available');
delete_site_option('appful_ssl_available');
delete_option('appful_server_id');
delete_site_option('appful_server_id');
delete_option('appful_disable_ssl');
delete_site_option('appful_disable_ssl');
delete_option('appful_disable_curl');
delete_site_option('appful_disable_curl');
delete_option('appful_disable_fopen');
delete_site_option('appful_disable_fopen');
delete_option('appful_last_ssl_check');
delete_site_option('appful_last_ssl_check');
delete_option('appful_ssl_error');
delete_site_option('appful_ssl_error');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'appful_taxonomy_image%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('appful_allow_commentflood');
delete_site_option('appful_allow_commentflood');
delete_option('appful_widget_apps');
delete_site_option('appful_widget_apps');
delete_option('appful_widget_branding');
delete_site_option('appful_widget_branding');
delete_option('appful_ip');
delete_site_option('appful_ip');
delete_option('appful_register_last_refresh');
delete_site_option('appful_register_last_refresh');
delete_option('appful_cache_register_interval');
delete_site_option('appful_cache_register_interval');
delete_option('appful_cache_last_refresh');
delete_site_option('appful_cache_last_refresh');
delete_option('appful_cache_fill_interval');
delete_site_option('appful_cache_fill_interval');
delete_option('appful_quickconnect_session_id');
delete_site_option('appful_quickconnect_session_id');
delete_option('disqus_active');
delete_site_option('disqus_active');
delete_option('disqus_forum_url');
delete_site_option('disqus_forum_url');
delete_option('appful_enabled_shortcodes');
delete_site_option('appful_enabled_shortcodes');
delete_option('appful_disabled_shortcodes');
delete_site_option('appful_disabled_shortcodes');
delete_option('appful_smart_banner');
delete_site_option('appful_smart_banner');
delete_option('appful_overlay_banner');
delete_site_option('appful_overlay_banner');
delete_option('appful_cached_post_types');
delete_site_option('appful_cached_post_types');
delete_option('appful_quickconnect_id');
delete_site_option('appful_quickconnect_id');
delete_option('appful_push_default');
delete_site_option('appful_push_default');
delete_option('appful_user');
delete_site_option('appful_user');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'post-likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'post-likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'post-likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'post-likes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'post-dislikes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'post-dislikes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'post-dislikes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'post-dislikes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'user_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'user_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'user_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'user_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%user_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'appful-no-push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'appful-no-push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'appful-no-push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'appful-no-push' ) );


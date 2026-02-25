<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('polldaddy_api_key');
delete_site_option('polldaddy_api_key');
delete_option('crowdsignal_api_key_secret');
delete_site_option('crowdsignal_api_key_secret');
delete_option('polldaddy_settings');
delete_site_option('polldaddy_settings');
delete_option('polldaddy_use_ssl');
delete_site_option('polldaddy_use_ssl');
delete_option('polldaddy_multiple_accounts');
delete_site_option('polldaddy_multiple_accounts');
delete_option('polldaddy_load_poll_inline');
delete_site_option('polldaddy_load_poll_inline');
delete_option('pd-rating-usercode');
delete_site_option('pd-rating-usercode');
delete_option('pd-rating-title-filter');
delete_site_option('pd-rating-title-filter');
delete_option('pd-rating-posts-id');
delete_site_option('pd-rating-posts-id');
delete_option('pd-rating-pages-id');
delete_site_option('pd-rating-pages-id');
delete_option('pd-rating-comments-id');
delete_site_option('pd-rating-comments-id');
delete_option('polldaddy_usercode_user');
delete_site_option('polldaddy_usercode_user');
delete_option('crowdsignal_user_code');
delete_site_option('crowdsignal_user_code');
delete_option('jetpack_active_modules');
delete_site_option('jetpack_active_modules');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pd-usercode-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('crowdsignal_api_key');
delete_site_option('crowdsignal_api_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pd-rating-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pd-rich-snippets');
delete_site_option('pd-rich-snippets');
delete_option('pd-rating-posts');
delete_site_option('pd-rating-posts');
delete_option('pd-rating-posts-index');
delete_site_option('pd-rating-posts-index');
delete_option('pd-rating-posts-pos');
delete_site_option('pd-rating-posts-pos');
delete_option('pd-rating-posts-index-pos');
delete_site_option('pd-rating-posts-index-pos');
delete_option('pd-rating-pages');
delete_site_option('pd-rating-pages');
delete_option('pd-rating-pages-pos');
delete_site_option('pd-rating-pages-pos');
delete_option('pd-rating-comments');
delete_site_option('pd-rating-comments');
delete_option('pd-rating-comments-pos');
delete_site_option('pd-rating-comments-pos');
delete_option('pd-rating-exclude-post-ids');
delete_site_option('pd-rating-exclude-post-ids');
delete_option('pd-rating-exclude-page-ids');
delete_site_option('pd-rating-exclude-page-ids');

// Clear Cron Jobs
wp_clear_scheduled_hook('polldaddy_rating_update_job');


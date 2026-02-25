<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_login_info' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('suggestion_toolkit_cache');
delete_site_option('suggestion_toolkit_cache');
delete_option('suggestion_toolkit_cache_expiration');
delete_site_option('suggestion_toolkit_cache_expiration');
delete_option('suggestion_toolkit_rewrite_tag');
delete_site_option('suggestion_toolkit_rewrite_tag');
delete_option('suggestion_toolkit_enabled_types');
delete_site_option('suggestion_toolkit_enabled_types');
delete_option('suggestion_toolkit_append_random');
delete_site_option('suggestion_toolkit_append_random');
delete_option('suggestion_toolkit_thumb_width');
delete_site_option('suggestion_toolkit_thumb_width');
delete_option('suggestion_toolkit_thumb_height');
delete_site_option('suggestion_toolkit_thumb_height');
delete_option('suggestion_toolkit_thumb_cover');
delete_site_option('suggestion_toolkit_thumb_cover');
delete_option('suggestion_toolkit_title_font_size');
delete_site_option('suggestion_toolkit_title_font_size');
delete_option('suggestion_toolkit_title_words');
delete_site_option('suggestion_toolkit_title_words');
delete_option('suggestion_toolkit_target_blank');
delete_site_option('suggestion_toolkit_target_blank');
delete_option('suggestion_toolkit_rel');
delete_site_option('suggestion_toolkit_rel');
delete_option('suggestion_toolkit_rewrite_enable');
delete_site_option('suggestion_toolkit_rewrite_enable');
delete_option('suggestion_toolkit_append_category');
delete_site_option('suggestion_toolkit_append_category');
delete_option('suggestion_toolkit_num_suggestions');
delete_site_option('suggestion_toolkit_num_suggestions');
delete_option('suggestion_toolkit_more');
delete_site_option('suggestion_toolkit_more');
delete_option('suggestion_toolkit_layout_style');
delete_site_option('suggestion_toolkit_layout_style');

// Clear Cron Jobs
wp_clear_scheduled_hook('suggestion_toolkit_daily_hook');


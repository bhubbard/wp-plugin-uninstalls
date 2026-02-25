<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('winden_dplugins_editor');
delete_site_option('winden_dplugins_editor');
delete_option('winden_dplugins_cache');
delete_site_option('winden_dplugins_cache');
delete_option('winden_dplugins_wizzard_state');
delete_site_option('winden_dplugins_wizzard_state');
delete_option('winden_v4_notice_dismissed');
delete_site_option('winden_v4_notice_dismissed');
delete_option('winden_dplugins_options');
delete_site_option('winden_dplugins_options');
delete_option('winden_dplugins_clear_cache_flag');
delete_site_option('winden_dplugins_clear_cache_flag');
delete_option('winden_option_name');
delete_site_option('winden_option_name');
delete_option('winden_dplugins_breakpoint_indicator_enabled');
delete_site_option('winden_dplugins_breakpoint_indicator_enabled');
delete_option('winden_cache_status');
delete_site_option('winden_cache_status');
delete_option('winden_split_mode');
delete_site_option('winden_split_mode');
delete_option('winden_post_classes_index');
delete_site_option('winden_post_classes_index');
delete_option('winden_crawled_classes');
delete_site_option('winden_crawled_classes');
delete_option('winden_last_crawl_time');
delete_site_option('winden_last_crawl_time');
delete_option('winden_needs_recompile');
delete_site_option('winden_needs_recompile');
delete_option('bricks_global_settings');
delete_site_option('bricks_global_settings');
delete_option('bricks_color_palette');
delete_site_option('bricks_color_palette');
delete_option('bricks_breakpoints');
delete_site_option('bricks_breakpoints');
delete_option('oxygen_vsb_global_colors');
delete_site_option('oxygen_vsb_global_colors');

// Delete Transients
delete_transient('winden_compiled_css_mtime');
delete_site_transient('winden_compiled_css_mtime');

// Clear Cron Jobs
wp_clear_scheduled_hook('winden_async_crawl');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_funculo_block_php' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_funculo_block_php' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_funculo_block_php' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_funculo_block_php' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_funculo_block_js' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_funculo_block_js' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_funculo_block_js' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_funculo_block_js' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_funculo_symbol_php' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_funculo_symbol_php' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_funculo_symbol_php' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_funculo_symbol_php' ) );


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wordpoints_recently_activated_modules');
delete_site_option('wordpoints_recently_activated_modules');
delete_option('wordpoints_breaking_deactivated_modules');
delete_site_option('wordpoints_breaking_deactivated_modules');
delete_option('wordpoints_incompatible_modules');
delete_site_option('wordpoints_incompatible_modules');
delete_option('wordpoints_merged_extensions');
delete_site_option('wordpoints_merged_extensions');
delete_option('wordpoints_module_check_nonce');
delete_site_option('wordpoints_module_check_nonce');
delete_option('wordpoints_module_check_rand_str');
delete_site_option('wordpoints_module_check_rand_str');
delete_option('wordpoints_sitewide_active_modules');
delete_site_option('wordpoints_sitewide_active_modules');
delete_option('wordpoints_active_modules');
delete_site_option('wordpoints_active_modules');
delete_option('wordpoints_legacy_extensions_dir');
delete_site_option('wordpoints_legacy_extensions_dir');
delete_option('wordpoints_disabled_points_hooks_edit_points_types');
delete_site_option('wordpoints_disabled_points_hooks_edit_points_types');
delete_option('wordpoints_points_types_hooks');
delete_site_option('wordpoints_points_types_hooks');
delete_option('wordpoints_comment_removed_hook_legacy');
delete_site_option('wordpoints_comment_removed_hook_legacy');
delete_option('wordpoints_post_delete_hook_legacy');
delete_site_option('wordpoints_post_delete_hook_legacy');
delete_option('wordpoints_points_register_legacy_post_publish_event');
delete_site_option('wordpoints_points_register_legacy_post_publish_event');
delete_option('wordpoints_comment_hook_legacy');
delete_site_option('wordpoints_comment_hook_legacy');
delete_option('wordpoints_post_hook_legacy');
delete_site_option('wordpoints_post_hook_legacy');
delete_option('wordpoints_ranks_2_4_0_update_duplicates');
delete_site_option('wordpoints_ranks_2_4_0_update_duplicates');
delete_option('wordpoints_filled_base_ranks');
delete_site_option('wordpoints_filled_base_ranks');
delete_option('wordpoints_data');
delete_site_option('wordpoints_data');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wordpoints_modules_delete_result_%', '_site_transient_wordpoints_modules_delete_result_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wordpoints_extension_updates');
delete_site_transient('wordpoints_extension_updates');

// Clear Cron Jobs
wp_clear_scheduled_hook('wordpoints_check_for_extension_updates');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'reverse_fired' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'reverse_fired' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'reverse_fired' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'reverse_fired' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hook_hit_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hook_hit_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hook_hit_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hook_hit_id' ) );


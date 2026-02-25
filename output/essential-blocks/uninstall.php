<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('essential_blocks_version');
delete_site_option('essential_blocks_version');
delete_option('eb_admin_menu_notice');
delete_site_option('eb_admin_menu_notice');
delete_option('eb_admin_promotion');
delete_site_option('eb_admin_promotion');
delete_option('_wpdeveloper_plugin_pointer_priority');
delete_site_option('_wpdeveloper_plugin_pointer_priority');
delete_option('essential_blocks_quick_setup_shown');
delete_site_option('essential_blocks_quick_setup_shown');
delete_option('essential_blocks_user_type');
delete_site_option('essential_blocks_user_type');
delete_option('eb_settings');
delete_site_option('eb_settings');
delete_option('essential_all_blocks');
delete_site_option('essential_all_blocks');
delete_option('essential_quick_toolbar_allowed_blocks');
delete_site_option('essential_quick_toolbar_allowed_blocks');
delete_option('eb_write_with_ai');
delete_site_option('eb_write_with_ai');
delete_option('eb_global_styles');
delete_site_option('eb_global_styles');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_reason_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpins_allow_tracking');
delete_site_option('wpins_allow_tracking');
delete_option('wpins_last_track_time');
delete_site_option('wpins_last_track_time');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpins_block_notice');
delete_site_option('wpins_block_notice');
delete_option('_eb_reusable_block_ids');
delete_site_option('_eb_reusable_block_ids');
delete_option('eb_opt_migration');
delete_site_option('eb_opt_migration');

// Delete Transients
delete_transient('essential_block_maybe_whatsnew_redirect');
delete_site_transient('essential_block_maybe_whatsnew_redirect');
delete_transient('essential_block_whats_new_notice');
delete_site_transient('essential_block_whats_new_notice');
delete_transient('wpnotice_priority_time_expired');
delete_site_transient('wpnotice_priority_time_expired');
delete_transient('eb_openverse_token');
delete_site_transient('eb_openverse_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('eb_cleanup_completed_job');
wp_clear_scheduled_hook('eb_process_ai_job');
wp_clear_scheduled_hook('eb_cleanup_ai_jobs');
wp_clear_scheduled_hook('eb_cleanup_stuck_ai_jobs');
wp_clear_scheduled_hook('eb_pattern_update_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eb_block_lists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eb_block_lists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eb_block_lists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eb_block_lists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eb_reusable_block_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eb_reusable_block_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eb_reusable_block_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eb_reusable_block_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_generate_element_display_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_generate_element_display_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_generate_element_display_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_generate_element_display_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_generate_element_exclude_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_generate_element_exclude_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_generate_element_exclude_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_generate_element_exclude_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_generate_element_user_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_generate_element_user_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_generate_element_user_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_generate_element_user_conditions' ) );


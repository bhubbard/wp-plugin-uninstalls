<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('feedwordpress_do_not_match_author_by_email');
delete_site_option('feedwordpress_do_not_match_author_by_email');
delete_option('feedwordpress_unfamiliar_author');
delete_site_option('feedwordpress_unfamiliar_author');
delete_option('feedwordpress_null_email_set');
delete_site_option('feedwordpress_null_email_set');
delete_option('feedwordpress_syndicated_post_type');
delete_site_option('feedwordpress_syndicated_post_type');
delete_option('feedwordpress_match_cats');
delete_site_option('feedwordpress_match_cats');
delete_option('feedwordpress_match_tags');
delete_site_option('feedwordpress_match_tags');
delete_option('feedwordpress_match_filter');
delete_site_option('feedwordpress_match_filter');
delete_option('feedwordpress_syndication_terms');
delete_site_option('feedwordpress_syndication_terms');
delete_option('feedwordpress_version');
delete_site_option('feedwordpress_version');
delete_option('feedwordpress_debug');
delete_site_option('feedwordpress_debug');
delete_option('feedwordpress_secret_key');
delete_site_option('feedwordpress_secret_key');
delete_option('feedwordpress_diagnostics_output');
delete_site_option('feedwordpress_diagnostics_output');
delete_option('feedwordpress_diagnostics_show');
delete_site_option('feedwordpress_diagnostics_show');
delete_option('feedwordpress_diagnostics_persistent_errors_hours');
delete_site_option('feedwordpress_diagnostics_persistent_errors_hours');
delete_option('feedwordpress_diagnostics_email_destination');
delete_site_option('feedwordpress_diagnostics_email_destination');
delete_option('feedwordpress_update_time_limit');
delete_site_option('feedwordpress_update_time_limit');
delete_option('feedwordpress_hardcode_name');
delete_site_option('feedwordpress_hardcode_name');
delete_option('feedwordpress_hardcode_description');
delete_site_option('feedwordpress_hardcode_description');
delete_option('feedwordpress_hardcode_url');
delete_site_option('feedwordpress_hardcode_url');
delete_option('feedwordpress_cat_id');
delete_site_option('feedwordpress_cat_id');
delete_option('feedwordpress_automatic_updates');
delete_site_option('feedwordpress_automatic_updates');
delete_option('feedwordpress_update_window');
delete_site_option('feedwordpress_update_window');
delete_option('feedwordpress_boilerplate_hook_order');
delete_site_option('feedwordpress_boilerplate_hook_order');
delete_option('feedwordpress_last_update_all');
delete_site_option('feedwordpress_last_update_all');
delete_option('feedwordpress_freshness');
delete_site_option('feedwordpress_freshness');
delete_option('feedwordpress_polls_per_update');
delete_site_option('feedwordpress_polls_per_update');
delete_option('feedwordpress_process_zaps');
delete_site_option('feedwordpress_process_zaps');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'feedwordpress_unfamiliar_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('feedwordpress_use_aggregator_source_data');
delete_site_option('feedwordpress_use_aggregator_source_data');
delete_option('feedwordpress_munge_permalink');
delete_site_option('feedwordpress_munge_permalink');
delete_option('feedwordpress_unfamiliar_category');
delete_site_option('feedwordpress_unfamiliar_category');
delete_option('feedwordpress_fetch_timeout');
delete_site_option('feedwordpress_fetch_timeout');
delete_option('feedwordpress_diagnostics_log');
delete_site_option('feedwordpress_diagnostics_log');
delete_option('feedwordpress_diagnostics_email_root_message_id');
delete_site_option('feedwordpress_diagnostics_email_root_message_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'feedwordpress_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('feedwordpress_boilerplate');
delete_site_option('feedwordpress_boilerplate');
delete_option('feedwordpress_bleg_box_hidden');
delete_site_option('feedwordpress_bleg_box_hidden');
delete_option('feedwordpress_syndicated_post_status');
delete_site_option('feedwordpress_syndicated_post_status');
delete_option('feedwordpress_custom_settings');
delete_site_option('feedwordpress_custom_settings');
delete_option('feedwordpress_formatting_filters');
delete_site_option('feedwordpress_formatting_filters');
delete_option('feedwordpress_resolve_relative');
delete_site_option('feedwordpress_resolve_relative');
delete_option('feedwordpress_munge_comments_feed_links');
delete_site_option('feedwordpress_munge_comments_feed_links');
delete_option('feedwordpress_syndicated_comment_status');
delete_site_option('feedwordpress_syndicated_comment_status');
delete_option('feedwordpress_syndicated_ping_status');
delete_site_option('feedwordpress_syndicated_ping_status');
delete_option('feedwordpress_syndication_cats');
delete_site_option('feedwordpress_syndication_cats');
delete_option('feedwordpress_syndication_tags');
delete_site_option('feedwordpress_syndication_tags');
delete_option('feedwordpress_freeze_updates');
delete_site_option('feedwordpress_freeze_updates');

// Clear Cron Jobs
wp_clear_scheduled_hook('fwp_scheduled_update_checkin');
wp_clear_scheduled_hook('do_pings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedwordpress_zapped_blank_me' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedwordpress_zapped_blank_me' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedwordpress_zapped_blank_me' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedwordpress_zapped_blank_me' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedwordpress_zapped_blank_old_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedwordpress_zapped_blank_old_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedwordpress_zapped_blank_old_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedwordpress_zapped_blank_old_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_syndication_freeze_updates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_syndication_freeze_updates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_syndication_freeze_updates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_syndication_freeze_updates' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_feedwordpress_formatting_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_feedwordpress_formatting_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_feedwordpress_formatting_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_feedwordpress_formatting_filters' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_feedwordpress_retire_me_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_feedwordpress_retire_me_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_feedwordpress_retire_me_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_feedwordpress_retire_me_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'feedwordpress_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'feedwordpress_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'feedwordpress_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'feedwordpress_generated' ) );


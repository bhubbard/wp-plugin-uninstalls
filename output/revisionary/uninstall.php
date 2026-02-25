<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('revisionary_last_version');
delete_site_option('revisionary_last_version');
delete_option('revisionary_imported_ids');
delete_site_option('revisionary_imported_ids');
delete_option('_rvy_trigger_deletion');
delete_site_option('_rvy_trigger_deletion');
delete_option('rvy_num_revisions');
delete_site_option('rvy_num_revisions');
delete_option('revisionary_sent_mail');
delete_site_option('revisionary_sent_mail');
delete_option('revisionary_mail_buffer');
delete_site_option('revisionary_mail_buffer');
delete_option('revisionary_2_install_time');
delete_site_option('revisionary_2_install_time');
delete_option('rvy_next_rev_publish_gmt');
delete_site_option('rvy_next_rev_publish_gmt');
delete_option('rvy_edd_key');
delete_site_option('rvy_edd_key');
delete_option('publishpress_improved_notifications_options');
delete_site_option('publishpress_improved_notifications_options');
delete_option('revisionary_pro_fix_revision_scheduled_notification');
delete_site_option('revisionary_pro_fix_revision_scheduled_notification');
delete_option('revisionary_pro_fix_default_notifications_meta_key');
delete_site_option('revisionary_pro_fix_default_notifications_meta_key');
delete_option('revisionary_pro_fix_default_notification_shortcodes');
delete_site_option('revisionary_pro_fix_default_notification_shortcodes');
delete_option('revisionary_pro_restore_notifications');
delete_site_option('revisionary_pro_restore_notifications');
delete_option('rvy_scheduled_publish_cron');
delete_site_option('rvy_scheduled_publish_cron');
delete_option('rvy_legacy_notifications');
delete_site_option('rvy_legacy_notifications');
delete_option('rvy_revision_limit_per_post');
delete_site_option('rvy_revision_limit_per_post');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('rvy_wp_cron_usage_detected');
delete_site_option('rvy_wp_cron_usage_detected');
delete_option('rvy_enabled_post_types');
delete_site_option('rvy_enabled_post_types');
delete_option('rvy_enabled_post_types_archive');
delete_site_option('rvy_enabled_post_types_archive');
delete_option('requested_remote_actions_rvy');
delete_site_option('requested_remote_actions_rvy');
delete_option('revisionary_dismissals');
delete_site_option('revisionary_dismissals');
delete_option('rvy_dismissals');
delete_site_option('rvy_dismissals');
delete_option('pp_revisions_beta3_option_sync_done');
delete_site_option('pp_revisions_beta3_option_sync_done');
delete_option('rvy_revision_statuses_noun_labels');
delete_site_option('rvy_revision_statuses_noun_labels');
delete_option('rvy_use_publishpress_notifications');
delete_site_option('rvy_use_publishpress_notifications');
delete_option('rvy_options_sitewide_reviewed');
delete_site_option('rvy_options_sitewide_reviewed');
delete_option('rvy_options_sitewide');
delete_site_option('rvy_options_sitewide');
delete_option('rvy_delete_settings_on_uninstall');
delete_site_option('rvy_delete_settings_on_uninstall');
delete_option('_pp_statuses_planner_default_revision_notifications');
delete_site_option('_pp_statuses_planner_default_revision_notifications');
delete_option('classic-editor-allow-users');
delete_site_option('classic-editor-allow-users');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');

// Delete Transients
delete_transient('revisionary_previous_install');
delete_site_transient('revisionary_previous_install');
delete_transient('_revisionary_1x_migration');
delete_site_transient('_revisionary_1x_migration');

// Clear Cron Jobs
wp_clear_scheduled_hook('publish_revision_rvy');
wp_clear_scheduled_hook('rvy_mail_buffer_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rvy_base_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rvy_base_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rvy_base_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rvy_base_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rvy_imported_revision' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rvy_imported_revision' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rvy_imported_revision' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rvy_imported_revision' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rvy_published_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rvy_published_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rvy_published_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rvy_published_gmt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rvy_prev_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rvy_prev_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rvy_prev_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rvy_prev_revision_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rvy_approved_by' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rvy_approved_by' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rvy_approved_by' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rvy_approved_by' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fl_builder_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rvy_author_selection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rvy_author_selection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rvy_author_selection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rvy_author_selection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_element_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_element_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_element_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_element_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_requested_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_requested_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_requested_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_requested_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'psppno_workflow_channel_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'psppno_workflow_channel_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'psppno_workflow_channel_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'psppno_workflow_channel_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rvy_updated_by' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rvy_updated_by' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rvy_updated_by' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rvy_updated_by' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rvy_has_revisions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rvy_has_revisions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rvy_has_revisions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rvy_has_revisions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'classic-editor-remember' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_classic-editor-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_classic-editor-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_classic-editor-settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_classic-editor-settings' ) );


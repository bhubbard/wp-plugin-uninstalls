-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('revisionary_last_version', 'revisionary_imported_ids', '_rvy_trigger_deletion', 'rvy_num_revisions', 'revisionary_sent_mail', 'revisionary_mail_buffer', 'revisionary_2_install_time', 'rvy_next_rev_publish_gmt', 'rvy_edd_key', 'publishpress_improved_notifications_options', 'revisionary_pro_fix_revision_scheduled_notification', 'revisionary_pro_fix_default_notifications_meta_key', 'revisionary_pro_fix_default_notification_shortcodes', 'revisionary_pro_restore_notifications', 'rvy_scheduled_publish_cron', 'rvy_legacy_notifications', 'rvy_revision_limit_per_post', 'active_sitewide_plugins', 'rvy_wp_cron_usage_detected', 'rvy_enabled_post_types', 'rvy_enabled_post_types_archive', 'requested_remote_actions_rvy', 'revisionary_dismissals', 'rvy_dismissals', 'pp_revisions_beta3_option_sync_done', 'rvy_revision_statuses_noun_labels', 'rvy_use_publishpress_notifications', 'rvy_options_sitewide_reviewed', 'rvy_options_sitewide', 'rvy_delete_settings_on_uninstall', '_pp_statuses_planner_default_revision_notifications', 'classic-editor-allow-users', 'classic-editor-replace', 'revisionary_previous_install', '_revisionary_1x_migration');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rvy_base_post_id', '_rvy_imported_revision', '_rvy_published_gmt', '_rvy_prev_revision_status', '_rvy_approved_by', '_fl_builder_data', '_rvy_author_selection', '_elementor_element_cache', '_requested_slug', '_rvy_updated_by', '_rvy_has_revisions', 'classic-editor-remember', 'wp_classic-editor-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rvy_base_post_id', '_rvy_imported_revision', '_rvy_published_gmt', '_rvy_prev_revision_status', '_rvy_approved_by', '_fl_builder_data', '_rvy_author_selection', '_elementor_element_cache', '_requested_slug', '_rvy_updated_by', '_rvy_has_revisions', 'classic-editor-remember', 'wp_classic-editor-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rvy_base_post_id', '_rvy_imported_revision', '_rvy_published_gmt', '_rvy_prev_revision_status', '_rvy_approved_by', '_fl_builder_data', '_rvy_author_selection', '_elementor_element_cache', '_requested_slug', '_rvy_updated_by', '_rvy_has_revisions', 'classic-editor-remember', 'wp_classic-editor-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rvy_base_post_id', '_rvy_imported_revision', '_rvy_published_gmt', '_rvy_prev_revision_status', '_rvy_approved_by', '_fl_builder_data', '_rvy_author_selection', '_elementor_element_cache', '_requested_slug', '_rvy_updated_by', '_rvy_has_revisions', 'classic-editor-remember', 'wp_classic-editor-settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'psppno_workflow_channel_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'psppno_workflow_channel_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'psppno_workflow_channel_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'psppno_workflow_channel_%';


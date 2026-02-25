#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revisionary_last_version'
wp option delete 'revisionary_imported_ids'
wp option delete '_rvy_trigger_deletion'
wp option delete 'rvy_num_revisions'
wp option delete 'revisionary_sent_mail'
wp option delete 'revisionary_mail_buffer'
wp option delete 'revisionary_2_install_time'
wp option delete 'rvy_next_rev_publish_gmt'
wp option delete 'rvy_edd_key'
wp option delete 'publishpress_improved_notifications_options'
wp option delete 'revisionary_pro_fix_revision_scheduled_notification'
wp option delete 'revisionary_pro_fix_default_notifications_meta_key'
wp option delete 'revisionary_pro_fix_default_notification_shortcodes'
wp option delete 'revisionary_pro_restore_notifications'
wp option delete 'rvy_scheduled_publish_cron'
wp option delete 'rvy_legacy_notifications'
wp option delete 'rvy_revision_limit_per_post'
wp option delete 'active_sitewide_plugins'
wp option delete 'rvy_wp_cron_usage_detected'
wp option delete 'rvy_enabled_post_types'
wp option delete 'rvy_enabled_post_types_archive'
wp option delete 'requested_remote_actions_rvy'
wp option delete 'revisionary_dismissals'
wp option delete 'rvy_dismissals'
wp option delete 'pp_revisions_beta3_option_sync_done'
wp option delete 'rvy_revision_statuses_noun_labels'
wp option delete 'rvy_use_publishpress_notifications'
wp option delete 'rvy_options_sitewide_reviewed'
wp option delete 'rvy_options_sitewide'
wp option delete 'rvy_delete_settings_on_uninstall'
wp option delete '_pp_statuses_planner_default_revision_notifications'
wp option delete 'classic-editor-allow-users'
wp option delete 'classic-editor-replace'

# Delete Transients
wp transient delete 'revisionary_previous_install'
wp transient delete '_revisionary_1x_migration'

# Clear Cron Jobs
wp cron event delete 'publish_revision_rvy'
wp cron event delete 'rvy_mail_buffer_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rvy_base_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rvy_base_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rvy_base_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rvy_base_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rvy_imported_revision'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rvy_imported_revision'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rvy_imported_revision'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rvy_imported_revision'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rvy_published_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rvy_published_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rvy_published_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rvy_published_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rvy_prev_revision_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rvy_prev_revision_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rvy_prev_revision_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rvy_prev_revision_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rvy_approved_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rvy_approved_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rvy_approved_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rvy_approved_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rvy_author_selection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rvy_author_selection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rvy_author_selection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rvy_author_selection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_requested_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_requested_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_requested_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_requested_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'psppno_workflow_channel_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'psppno_workflow_channel_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'psppno_workflow_channel_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'psppno_workflow_channel_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rvy_updated_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rvy_updated_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rvy_updated_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rvy_updated_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rvy_has_revisions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rvy_has_revisions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rvy_has_revisions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rvy_has_revisions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_classic-editor-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_classic-editor-settings'"

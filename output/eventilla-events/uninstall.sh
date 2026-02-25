#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_capability_to_manage_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_capability_to_access_tools'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_capability_to_read_logs'"
wp option delete 'eventilla_opt_logger_level'
wp option delete 'eventilla_opt_polylang_migration_needed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_delay'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apikey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_event_hash'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logger_level'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_download_images'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_use_social_media_logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_delete_past_events'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_delete_all_events'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remote_update_endpoint'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pause'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dont_import_past_events'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_match_all'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tile'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_account_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allowed_tags'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_api_logger'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_current_lang'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_polylang_language_map'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tags_extended_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remote_update_endpoint_secret'"
wp option delete 'eventilla_opt_apikey'
wp option delete 'eventilla_opt_last_sync'
wp option delete 'eventilla_opt_delete_all_events'
wp option delete 'eventilla_opt_pause'
wp option delete 'eventilla_opt_account_id'
wp option delete 'eventilla_opt_current_lang'
wp option delete 'eventilla_opt_chosen_event_fields'
wp option delete 'eventilla_opt_tags'
wp option delete 'eventilla_opt_tags_extended_info'
wp option delete 'eventilla_opt_dont_import_past_events'
wp option delete 'eventilla_opt_last_request_time'
wp option delete 'eventilla_opt_match_all'
wp option delete 'eventilla_opt_allowed_tags'
wp option delete 'eventilla_opt_use_social_media_logo'
wp option delete 'eventilla_opt_download_images'
wp option delete 'eventilla_opt_capability_to_access_tools'
wp option delete 'eventilla_opt_template_editor_table'
wp option delete 'eventilla_opt_template_editor_list'
wp option delete 'eventilla_opt_template_editor_tile'
wp option delete 'eventilla_opt_abort'
wp option delete 'eventilla_opt_queue'
wp option delete 'eventilla_opt_first_request_time'
wp option delete 'eventilla_opt_reset'
wp option delete 'eventilla_opt_polylang_language_map'
wp option delete 'eventilla_opt_remote_update_endpoint'
wp option delete 'eventilla_opt_delay'
wp option delete 'eventilla_opt_delete_past_events'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"
wp option delete 'eventilla_opt_updates_ran_for_1.9.0'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eventilla_opt_updates_ran_for_%'"
wp option delete 'eventilla_opt_version'
wp option delete 'eventilla_opt_future_events_only'

# Delete Transients
wp transient delete 'eventilla_tools_events_update_queued'
wp transient delete 'eventilla_tools_events_update_queued_events'
wp transient delete 'eventilla_polylang_migration_queued'
wp transient delete 'eventilla_polylang_migration_queued_count'
wp transient delete 'eventilla_option_update_notice'
wp transient delete 'eventilla_log_file_hash'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'eventilla_wp_update_from_eventilla'
wp cron event delete 'eventilla_wp_delete_past_events'
wp cron event delete 'eventilla_wp_delete_all_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eventilla_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eventilla_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eventilla_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eventilla_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eventilla_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eventilla_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eventilla_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eventilla_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eventilla_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eventilla_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eventilla_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eventilla_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eventilla_polylang_migration_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eventilla_polylang_migration_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eventilla_polylang_migration_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eventilla_polylang_migration_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eventilla_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eventilla_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eventilla_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eventilla_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eventilla_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eventilla_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eventilla_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eventilla_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"

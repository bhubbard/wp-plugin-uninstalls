-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eventilla_opt_logger_level', 'eventilla_opt_polylang_migration_needed', 'eventilla_opt_apikey', 'eventilla_opt_last_sync', 'eventilla_opt_delete_all_events', 'eventilla_opt_pause', 'eventilla_opt_account_id', 'eventilla_opt_current_lang', 'eventilla_opt_chosen_event_fields', 'eventilla_opt_tags', 'eventilla_opt_tags_extended_info', 'eventilla_opt_dont_import_past_events', 'eventilla_opt_last_request_time', 'eventilla_opt_match_all', 'eventilla_opt_allowed_tags', 'eventilla_opt_use_social_media_logo', 'eventilla_opt_download_images', 'eventilla_opt_capability_to_access_tools', 'eventilla_opt_template_editor_table', 'eventilla_opt_template_editor_list', 'eventilla_opt_template_editor_tile', 'eventilla_opt_abort', 'eventilla_opt_queue', 'eventilla_opt_first_request_time', 'eventilla_opt_reset', 'eventilla_opt_polylang_language_map', 'eventilla_opt_remote_update_endpoint', 'eventilla_opt_delay', 'eventilla_opt_delete_past_events', 'eventilla_opt_updates_ran_for_1.9.0', 'eventilla_opt_version', 'eventilla_opt_future_events_only', 'eventilla_tools_events_update_queued', 'eventilla_tools_events_update_queued_events', 'eventilla_polylang_migration_queued', 'eventilla_polylang_migration_queued_count', 'eventilla_option_update_notice', 'eventilla_log_file_hash', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_capability_to_manage_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_capability_to_access_tools';
DELETE FROM wp_options WHERE option_name LIKE '%_capability_to_read_logs';
DELETE FROM wp_options WHERE option_name LIKE '%_delay';
DELETE FROM wp_options WHERE option_name LIKE '%_position';
DELETE FROM wp_options WHERE option_name LIKE '%_apikey';
DELETE FROM wp_options WHERE option_name LIKE '%_event_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_level';
DELETE FROM wp_options WHERE option_name LIKE '%_download_images';
DELETE FROM wp_options WHERE option_name LIKE '%_use_social_media_logo';
DELETE FROM wp_options WHERE option_name LIKE '%_delete_past_events';
DELETE FROM wp_options WHERE option_name LIKE '%_delete_all_events';
DELETE FROM wp_options WHERE option_name LIKE '%_remote_update_endpoint';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';
DELETE FROM wp_options WHERE option_name LIKE '%_pause';
DELETE FROM wp_options WHERE option_name LIKE '%_dont_import_past_events';
DELETE FROM wp_options WHERE option_name LIKE '%_match_all';
DELETE FROM wp_options WHERE option_name LIKE '%_list';
DELETE FROM wp_options WHERE option_name LIKE '%_table';
DELETE FROM wp_options WHERE option_name LIKE '%_tile';
DELETE FROM wp_options WHERE option_name LIKE '%_account_id';
DELETE FROM wp_options WHERE option_name LIKE '%_allowed_tags';
DELETE FROM wp_options WHERE option_name LIKE '%_is_api_logger';
DELETE FROM wp_options WHERE option_name LIKE '%_current_lang';
DELETE FROM wp_options WHERE option_name LIKE '%_polylang_language_map';
DELETE FROM wp_options WHERE option_name LIKE '%_tags_extended_info';
DELETE FROM wp_options WHERE option_name LIKE '%_remote_update_endpoint_secret';
DELETE FROM wp_options WHERE option_name LIKE '%-options';
DELETE FROM wp_options WHERE option_name LIKE 'eventilla_opt_updates_ran_for_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eventilla_start', 'eventilla_end', 'eventilla_uid', 'eventilla_polylang_migration_notice_dismissed', 'eventilla_city', 'eventilla_tags', '_wp_attached_file', '_wp_trash_meta_status', '_wp_trash_meta_time', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('eventilla_start', 'eventilla_end', 'eventilla_uid', 'eventilla_polylang_migration_notice_dismissed', 'eventilla_city', 'eventilla_tags', '_wp_attached_file', '_wp_trash_meta_status', '_wp_trash_meta_time', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('eventilla_start', 'eventilla_end', 'eventilla_uid', 'eventilla_polylang_migration_notice_dismissed', 'eventilla_city', 'eventilla_tags', '_wp_attached_file', '_wp_trash_meta_status', '_wp_trash_meta_time', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eventilla_start', 'eventilla_end', 'eventilla_uid', 'eventilla_polylang_migration_notice_dismissed', 'eventilla_city', 'eventilla_tags', '_wp_attached_file', '_wp_trash_meta_status', '_wp_trash_meta_time', '_thumbnail_id');


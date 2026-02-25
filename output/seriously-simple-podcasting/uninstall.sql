-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssp_version', 'ssp_admin_footer_text_rated', 'ss_podcasting_podmotor_import_podcasts', 'ss_podcasting_podmotor_import', 'ssp_external_rss', 'ssp_categories_update_dismissed', 'ss_podcasting_elementor_templates_disabled', 'ssp_db_version', 'ssp_duplicate_guids_found', 'ssp_duplicate_guids_fix_completed', 'ssp_duplicate_guids_notice_dismissed', 'ss_podcasting_player_locations', 'ss_podcasting_player_content_visibility', 'ss_podcasting_player_content_location', 'ss_podcasting_player_style', 'ss_podcasting_include_in_main_query', 'ss_podcasting_feed_url', 'ss_podcasting_download_file_enabled', 'ss_podcasting_play_in_new_window_enabled', 'ss_podcasting_duration_enabled', 'ss_podcasting_date_recorded_enabled', 'ss_podcasting_player_subscribe_urls_enabled', 'ss_podcasting_player_meta_data_enabled', 'ss_podcasting_use_post_types', 'ss_podcasting_protect', 'ss_podcasting_protection_username', 'ss_podcasting_protection_password', 'ss_podcasting_protection_no_access_message', 'ss_podcasting_turbocharge_feed', 'ss_podcasting_funding', 'ss_podcasting_podcast_value', 'ss_podcasting_data_guid', 'ss_podcasting_subscribe_options', 'ss_podcasting_episode_description', 'ss_podcasting_podmotor_account_id', 'ss_podcasting_distribution_upgrade_disabled', 'ss_podcasting_elementor_templates', 'ssp_lifterlms_users_series_map', 'ss_memberpress_users_series_map', 'ss_pmpro_users_series_map', 'ss_wcmps_users_series_map', 'ssp_failed_sync_episodes', 'ss_podcasting_player_mode', 'ss_podcasting_subscribe_button_enabled', 'ss_podcasting_share_button_enabled', 'ss_podcasting_data_image', 'ss_podcasting_data_title', 'ss_podcasting_data_description', 'ss_podcasting_data_language', 'ss_podcasting_data_copyright');
DELETE FROM wp_options WHERE option_name IN ('ss_podcasting_data_subtitle', 'ss_podcasting_data_author', 'ss_podcasting_data_owner_name', 'ss_podcasting_data_owner_email', 'ss_podcasting_explicit', 'ss_podcasting_complete', 'ss_podcasting_podmotor_account_api_token', 'active_sitewide_plugins', 'ssp_nginx_settings_status', 'ssp_server_type');
DELETE FROM wp_options WHERE option_name LIKE '%dynamic_style_version';
DELETE FROM wp_options WHERE option_name LIKE '%podmotor_account_email';
DELETE FROM wp_options WHERE option_name LIKE '%podmotor_account_api_token';
DELETE FROM wp_options WHERE option_name LIKE '%podmotor_account_id';
DELETE FROM wp_options WHERE option_name LIKE '%podmotor_disconnect';
DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_exclude_feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_turbocharge_feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_funding_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_podcast_value_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_data_image_%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_data_category%';
DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_data_subcategory%';
DELETE FROM wp_options WHERE option_name LIKE 'ssp_pmpro_feed_urls_user_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('podmotor_episode_id', 'podmotor_file_id', 'date_recorded', 'ssp_guid', 'block', 'itunes_episode_type', 'itunes_title', 'itunes_episode_number', 'itunes_season_number', 'cover_image_id', 'filesize_raw', 'castos_file_data', 'duration', 'filesize', 'audio_file', 'enclosure', 'podmotor_schedule_upload', 'explicit', '_wp_attachment_image_alt', 'ssp_original_guid', 'cover_image', 'episode_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('podmotor_episode_id', 'podmotor_file_id', 'date_recorded', 'ssp_guid', 'block', 'itunes_episode_type', 'itunes_title', 'itunes_episode_number', 'itunes_season_number', 'cover_image_id', 'filesize_raw', 'castos_file_data', 'duration', 'filesize', 'audio_file', 'enclosure', 'podmotor_schedule_upload', 'explicit', '_wp_attachment_image_alt', 'ssp_original_guid', 'cover_image', 'episode_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('podmotor_episode_id', 'podmotor_file_id', 'date_recorded', 'ssp_guid', 'block', 'itunes_episode_type', 'itunes_title', 'itunes_episode_number', 'itunes_season_number', 'cover_image_id', 'filesize_raw', 'castos_file_data', 'duration', 'filesize', 'audio_file', 'enclosure', 'podmotor_schedule_upload', 'explicit', '_wp_attachment_image_alt', 'ssp_original_guid', 'cover_image', 'episode_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('podmotor_episode_id', 'podmotor_file_id', 'date_recorded', 'ssp_guid', 'block', 'itunes_episode_type', 'itunes_title', 'itunes_episode_number', 'itunes_season_number', 'cover_image_id', 'filesize_raw', 'castos_file_data', 'duration', 'filesize', 'audio_file', 'enclosure', 'podmotor_schedule_upload', 'explicit', '_wp_attachment_image_alt', 'ssp_original_guid', 'cover_image', 'episode_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_series_image_settings';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_series_image_settings';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_series_image_settings';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_series_image_settings';


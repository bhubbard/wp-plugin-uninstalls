#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssp_version'
wp option delete 'ssp_admin_footer_text_rated'
wp option delete 'ss_podcasting_podmotor_import_podcasts'
wp option delete 'ss_podcasting_podmotor_import'
wp option delete 'ssp_external_rss'
wp option delete 'ssp_categories_update_dismissed'
wp option delete 'ss_podcasting_elementor_templates_disabled'
wp option delete 'ssp_db_version'
wp option delete 'ssp_duplicate_guids_found'
wp option delete 'ssp_duplicate_guids_fix_completed'
wp option delete 'ssp_duplicate_guids_notice_dismissed'
wp option delete 'ss_podcasting_player_locations'
wp option delete 'ss_podcasting_player_content_visibility'
wp option delete 'ss_podcasting_player_content_location'
wp option delete 'ss_podcasting_player_style'
wp option delete 'ss_podcasting_include_in_main_query'
wp option delete 'ss_podcasting_feed_url'
wp option delete 'ss_podcasting_download_file_enabled'
wp option delete 'ss_podcasting_play_in_new_window_enabled'
wp option delete 'ss_podcasting_duration_enabled'
wp option delete 'ss_podcasting_date_recorded_enabled'
wp option delete 'ss_podcasting_player_subscribe_urls_enabled'
wp option delete 'ss_podcasting_player_meta_data_enabled'
wp option delete 'ss_podcasting_use_post_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dynamic_style_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%podmotor_account_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%podmotor_account_api_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%podmotor_account_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%podmotor_disconnect'"
wp option delete 'ss_podcasting_protect'
wp option delete 'ss_podcasting_protection_username'
wp option delete 'ss_podcasting_protection_password'
wp option delete 'ss_podcasting_protection_no_access_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_exclude_feed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_turbocharge_feed_%'"
wp option delete 'ss_podcasting_turbocharge_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_funding_%'"
wp option delete 'ss_podcasting_funding'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_podcast_value_%'"
wp option delete 'ss_podcasting_podcast_value'
wp option delete 'ss_podcasting_data_guid'
wp option delete 'ss_podcasting_subscribe_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_%'"
wp option delete 'ss_podcasting_episode_description'
wp option delete 'ss_podcasting_podmotor_account_id'
wp option delete 'ss_podcasting_distribution_upgrade_disabled'
wp option delete 'ss_podcasting_elementor_templates'
wp option delete 'ssp_lifterlms_users_series_map'
wp option delete 'ss_memberpress_users_series_map'
wp option delete 'ss_pmpro_users_series_map'
wp option delete 'ss_wcmps_users_series_map'
wp option delete 'ssp_failed_sync_episodes'
wp option delete 'ss_podcasting_player_mode'
wp option delete 'ss_podcasting_subscribe_button_enabled'
wp option delete 'ss_podcasting_share_button_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_data_image_%'"
wp option delete 'ss_podcasting_data_image'
wp option delete 'ss_podcasting_data_title'
wp option delete 'ss_podcasting_data_description'
wp option delete 'ss_podcasting_data_language'
wp option delete 'ss_podcasting_data_copyright'
wp option delete 'ss_podcasting_data_subtitle'
wp option delete 'ss_podcasting_data_author'
wp option delete 'ss_podcasting_data_owner_name'
wp option delete 'ss_podcasting_data_owner_email'
wp option delete 'ss_podcasting_explicit'
wp option delete 'ss_podcasting_complete'
wp option delete 'ss_podcasting_podmotor_account_api_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_data_category%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ss_podcasting_data_subcategory%'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'ssp_nginx_settings_status'
wp transient delete 'ssp_server_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ssp_pmpro_feed_urls_user_%' OR option_name LIKE '_site_transient_ssp_pmpro_feed_urls_user_%'"

# Clear Cron Jobs
wp cron event delete 'ssp_cron_hook'
wp cron event delete 'ssp_check_ads'
wp cron event delete 'ssp_fix_episodes_sync'
wp cron event delete 'ssp_bulk_sync_lifterlms_subscribers'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'podmotor_episode_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'podmotor_episode_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'podmotor_episode_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'podmotor_episode_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'podmotor_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'podmotor_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'podmotor_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'podmotor_file_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_recorded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_recorded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_recorded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_recorded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssp_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssp_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssp_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssp_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itunes_episode_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itunes_episode_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itunes_episode_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itunes_episode_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itunes_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itunes_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itunes_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itunes_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itunes_episode_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itunes_episode_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itunes_episode_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itunes_episode_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itunes_season_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itunes_season_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itunes_season_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itunes_season_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cover_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cover_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cover_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cover_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'filesize_raw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'filesize_raw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'filesize_raw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'filesize_raw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'castos_file_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'castos_file_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'castos_file_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'castos_file_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'filesize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'filesize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'filesize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'filesize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'audio_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'audio_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'audio_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'audio_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'podmotor_schedule_upload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'podmotor_schedule_upload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'podmotor_schedule_upload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'podmotor_schedule_upload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_series_image_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_series_image_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_series_image_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_series_image_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'explicit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'explicit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'explicit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'explicit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssp_original_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssp_original_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssp_original_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssp_original_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cover_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cover_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cover_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cover_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'episode_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'episode_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'episode_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'episode_type'"

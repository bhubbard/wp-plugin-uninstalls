-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'presto_player_visits_database_version', 'presto_player_uninstall', 'presto_player_license', 'presto_player_license_data', 'presto_player_analytics', 'presto_player_google_analytics', 'presto_player_branding', 'presto_player_bunny_keys', 'presto_player_bunny_storage_zones', 'presto_player_bunny_pull_zones', 'presto_player_bunny_uid', 'presto_player_instant_video_width', 'presto_player_media_hub_sync_default', 'presto_player_dismissed_notice_nginx_rules', 'presto_player_presto_player_bunny_uid', 'presto_player_dismissed_notice_presto_player_reusable_notice', 'presto_preset_seed_version', 'presto_player_videos_database_version', 'presto_player_presets_database_version', 'presto_zone_token', 'presto_player_visits_upgrade_version', 'presto_player_pro_update_performance', 'presto_player_audio_presets_database_version', 'presto_player_email_collection_database_version', 'presto_audio_preset_seed_version', 'llms_av_prog_auto_play', 'widget_block', 'bsf_usage_last_displayed_time', 'bsf_usage_migrated', 'bsf_analytics_last_displayed_time', 'allowed_astra_notices', 'presto-player-rating', 'bsf_analytics_track', 'bsf_usage_track');
DELETE FROM wp_options WHERE option_name LIKE 'presto_player_dismissed_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time';
DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('presto-private-video', 'presto_player_instant_video_pages_enabled', 'type', 'presto_external_id', 'presto_video_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('presto-private-video', 'presto_player_instant_video_pages_enabled', 'type', 'presto_external_id', 'presto_video_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('presto-private-video', 'presto_player_instant_video_pages_enabled', 'type', 'presto_external_id', 'presto_video_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('presto-private-video', 'presto_player_instant_video_pages_enabled', 'type', 'presto_external_id', 'presto_video_type');


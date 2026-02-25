#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'presto_player_visits_database_version'
wp option delete 'presto_player_uninstall'
wp option delete 'presto_player_license'
wp option delete 'presto_player_license_data'
wp option delete 'presto_player_analytics'
wp option delete 'presto_player_google_analytics'
wp option delete 'presto_player_branding'
wp option delete 'presto_player_bunny_keys'
wp option delete 'presto_player_bunny_storage_zones'
wp option delete 'presto_player_bunny_pull_zones'
wp option delete 'presto_player_bunny_uid'
wp option delete 'presto_player_instant_video_width'
wp option delete 'presto_player_media_hub_sync_default'
wp option delete 'presto_player_dismissed_notice_nginx_rules'
wp option delete 'presto_player_presto_player_bunny_uid'
wp option delete 'presto_player_dismissed_notice_presto_player_reusable_notice'
wp option delete 'presto_preset_seed_version'
wp option delete 'presto_player_videos_database_version'
wp option delete 'presto_player_presets_database_version'
wp option delete 'presto_zone_token'
wp option delete 'presto_player_visits_upgrade_version'
wp option delete 'presto_player_pro_update_performance'
wp option delete 'presto_player_audio_presets_database_version'
wp option delete 'presto_player_email_collection_database_version'
wp option delete 'presto_audio_preset_seed_version'
wp option delete 'llms_av_prog_auto_play'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'presto_player_dismissed_notice_%'"
wp option delete 'widget_block'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin'"
wp option delete 'bsf_usage_last_displayed_time'
wp option delete 'bsf_usage_migrated'
wp option delete 'bsf_analytics_last_displayed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time'"
wp option delete 'allowed_astra_notices'

# Delete Transients
wp transient delete 'presto-player-rating'
wp transient delete 'bsf_analytics_track'
wp transient delete 'bsf_usage_track'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'presto-private-video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'presto-private-video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'presto-private-video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'presto-private-video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'presto_player_instant_video_pages_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'presto_player_instant_video_pages_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'presto_player_instant_video_pages_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'presto_player_instant_video_pages_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'presto_external_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'presto_external_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'presto_external_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'presto_external_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'presto_video_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'presto_video_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'presto_video_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'presto_video_type'"

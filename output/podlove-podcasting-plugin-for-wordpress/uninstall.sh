#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'podlove_seen_about'
wp option delete 'podlove_db_migration_error'
wp option delete 'podlove_active_modules'
wp option delete 'podlove'
wp option delete 'podlove_analytics_tiles'
wp option delete 'podlove_analytics_compare_avg'
wp option delete 'podlove_migration_validation_cache'
wp option delete '_podlove_hide_teaser'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'podlove_tpl_cache_keys'
wp option delete 'cron'
wp option delete 'podlove_tracking_delete_head_requests'
wp option delete 'podlove_geo_tracking'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'podlove_%'"
wp option delete 'podlove_webplayer_settings'
wp option delete 'podlove_cron_diagnosis'
wp option delete 'podlove_cron_diagnosis_tries'
wp option delete 'podlove_asset_assignment'
wp option delete 'podlove_webplayer_formats'
wp option delete 'podlove_podcast'
wp option delete 'podlove_template_assignment'
wp option delete 'podlove_affiliate'
wp option delete 'podlove_episodes_to_be_remote_published'
wp option delete 'podlove_contributors'
wp option delete 'podlove_tracking_export_all'
wp option delete 'podlove_tracking_export_progress'
wp option delete 'podlove_import_file'
wp option delete 'podlove_import_tracking_file'
wp option delete 'podlove_notifications'
wp option delete 'podlove_notifications_test'
wp option delete 'podlove_modules_onboarding'
wp option delete 'podlove_plus_migration_completed'
wp option delete 'podlove_proxy_feeds'
wp option delete 'podlove_plus_push_feeds'
wp option delete 'podlove_website'
wp option delete 'podlove_metadata'
wp option delete 'podlove_redirects'
wp option delete 'podlove_tracking'
wp option delete 'podlove_database_version'
wp option delete 'podlove_global_messages'
wp option delete 'podlove_flattr'
wp option delete 'podlove_jobs'

# Delete Transients
wp transient delete 'podlove_needs_to_flush_rewrite_rules'
wp transient delete 'podlove_jobs_last_spawn_worker'
wp transient delete 'podlove_jobs_last_spawn_runner'
wp transient delete 'podlove_process_lock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_podlove_chapters_string_%' OR option_name LIKE '_site_transient_podlove_chapters_string_%'"
wp transient delete 'podlove_auphonic_presets'
wp transient delete 'podlove_auphonic_user'
wp transient delete 'podlove_tracking_export_finished'
wp transient delete 'podlove_dashboard_stats'
wp transient delete 'podlove_dashboard_stats_contributors'

# Clear Cron Jobs
wp cron event delete 'podlove_flush_rewrite_rules'
wp cron event delete 'podlove_validate_image_cache'
wp cron event delete 'podlove_refetch_cached_image'
wp cron event delete 'podlove_fire_webhook'
wp cron event delete 'podlove_cleanup_download_intents'
wp cron event delete 'podlove_calc_hourly_download_sums'
wp cron event delete 'podlove_calc_daily_download_sums'
wp cron event delete 'recalculate_episode_download_average'
wp cron event delete 'podlove_salt_download_intents'
wp cron event delete 'podlove_geoip_db_update'
wp cron event delete 'cron_job_worker'
wp cron event delete 'podlove_jobs_clean'
wp cron event delete 'podlove_cron_diagnosis_cron'
wp cron event delete 'podlove_analytics_heartbeat'
wp cron event delete 'podlove_asset_validation'
wp cron event delete 'podlove_cleanup_logging_table'
wp cron event delete 'podlove_notifications_start_mailer'
wp cron event delete 'podlove_calc_download_sums'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auphonic_production_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auphonic_production_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auphonic_production_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auphonic_production_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_auphonic_production_running'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_auphonic_production_running'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_auphonic_production_running'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_auphonic_production_running'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auphonic_plus_transfer_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auphonic_plus_transfer_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auphonic_plus_transfer_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auphonic_plus_transfer_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auphonic_plus_transfer_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auphonic_plus_transfer_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auphonic_plus_transfer_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auphonic_plus_transfer_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auphonic_plus_transfer_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auphonic_plus_transfer_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auphonic_plus_transfer_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auphonic_plus_transfer_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_eda_downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_eda_downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_eda_downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_eda_downloads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_eda_complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_eda_complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_eda_complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_eda_complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_3y'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_3y'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_3y'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_3y'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_2y'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_2y'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_2y'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_2y'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_1y'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_1y'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_1y'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_1y'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_3q'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_3q'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_3q'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_3q'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_2q'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_2q'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_2q'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_2q'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_1q'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_1q'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_1q'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_1q'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_4w'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_4w'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_4w'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_4w'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_3w'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_3w'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_3w'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_3w'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_2w'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_2w'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_2w'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_2w'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_1w'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_1w'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_1w'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_1w'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_6d'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_6d'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_6d'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_6d'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_5d'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_5d'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_5d'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_5d'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_4d'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_4d'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_4d'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_4d'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_3d'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_3d'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_3d'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_3d'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_2d'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_2d'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_2d'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_2d'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_downloads_1d'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_downloads_1d'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_downloads_1d'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_downloads_1d'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'podlove_feeds_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'podlove_feeds_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'podlove_feeds_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'podlove_feeds_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_podlove_downloads_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_podlove_downloads_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_podlove_downloads_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_podlove_downloads_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_last_validated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_last_validated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_last_validated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_last_validated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'podlove_contributors_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'podlove_contributors_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'podlove_contributors_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'podlove_contributors_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_episode_contributors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_episode_contributors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_episode_contributors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_episode_contributors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_notifications_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_notifications_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_notifications_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_notifications_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'podlove_onboarding_acknowledge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'podlove_onboarding_acknowledge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'podlove_onboarding_acknowledge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'podlove_onboarding_acknowledge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'podlove_seasons_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'podlove_seasons_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'podlove_seasons_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'podlove_seasons_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shownotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shownotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shownotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shownotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auphonic_preset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auphonic_preset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auphonic_preset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auphonic_preset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'podlove_shows_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'podlove_shows_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'podlove_shows_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'podlove_shows_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'podlove_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'podlove_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'podlove_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'podlove_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_podlove_episode_was_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_podlove_episode_was_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_podlove_episode_was_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_podlove_episode_was_published'"

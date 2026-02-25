#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abj404_settings'
wp option delete 'abj404_simulated_db_latency_ms'
wp option delete 'abj404_migrated_to_relative_paths'
wp option delete 'abj404_activation_processed_blogs'
wp option delete 'abj404_activation_in_progress'
wp option delete 'abj404_migration_results'
wp option delete 'abj404_ngram_cache_initialized'
wp option delete 'abj404_ngram_usage_stats'
wp option delete 'abj404_setup_completed'
wp option delete 'abj404_pending_network_activation'
wp option delete 'abj404_network_activation_total'
wp option delete 'wp_dark_mode_enabled'
wp option delete 'dark_mode_for_wp_dashboard_enabled'
wp option delete 'abj404_installed_time'
wp option delete 'abj404_user_feedback'

# Delete Transients
wp transient delete 'abj404_runtime_missing_files'
wp transient delete 'abj404_plugin_db_notice'
wp transient delete 'abj404_runtime_integrity_checked'
wp transient delete 'abj404_view_cache_cleanup_marker'
wp transient delete 'abj404_logs_requested_url_column_meta'
wp transient delete 'abj404_logs_requested_url_charset'

# Clear Cron Jobs
wp cron event delete 'abj404_network_activation_background'
wp cron event delete 'abj404_rebuild_ngram_cache_hook'
wp cron event delete 'abj404_duplicateCronAction'
wp cron event delete 'abj404_network_activation_hook'
wp cron event delete 'abj404_cleanupCronAction'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abj404_settings_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abj404_settings_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abj404_settings_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abj404_settings_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_abj404_create_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_abj404_create_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_abj404_create_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_abj404_create_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abj404_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abj404_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abj404_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abj404_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abj404_review_remind_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abj404_review_remind_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abj404_review_remind_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abj404_review_remind_later'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abj404_review_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abj404_review_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abj404_review_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abj404_review_step'"

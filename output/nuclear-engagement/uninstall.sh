#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nuclear_engagement_settings'
wp option delete 'nuclear_engagement_setup'
wp option delete 'nuclen_custom_css_version'
wp option delete 'nuclen_bootstrap_error'
wp option delete 'nuclen_theme_settings'
wp option delete 'nuclen_meta_migration_done'
wp option delete 'nuclen_meta_migration_error'
wp option delete 'nuclen_enabled_modules'
wp option delete 'nuclen_toc_auto_insert'
wp option delete 'nuclen_toc_sticky_enabled'
wp option delete 'nuclen_toc_min_headings'
wp option delete 'nuclear_engagement_encryption_key'
wp option delete 'nuclen_timeout_log'
wp option delete 'nuclen_theme_migration_completed'
wp option delete 'nuclear_engagement_settings_backup'
wp option delete 'nuclen_settings'
wp option delete 'nuclen_settings_backup'
wp option delete 'nuclear_engagement_naming_migration_completed'

# Delete Transients
wp transient delete 'nuclen_recent_completions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nuclen_bulk_job_%' OR option_name LIKE '_site_transient_nuclen_bulk_job_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nuclen_batch_%' OR option_name LIKE '_site_transient_nuclen_batch_%'"
wp transient delete 'nuclear_engagement_allowed_post_types'
wp transient delete 'nuclen_cleanup_results'
wp transient delete 'nuclen_plugin_activation_redirect'
wp transient delete 'nuclen_optin_table_exists'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nuclen_batch_results_%' OR option_name LIKE '_site_transient_nuclen_batch_results_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%bulk_jobs' OR option_name LIKE '_site_transient_%bulk_jobs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%s' OR option_name LIKE '_site_transient_%s'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nuclen_timeout_%' OR option_name LIKE '_site_transient_nuclen_timeout_%'"
wp transient delete 'nuclen_active_theme'
wp transient delete 'nuclen_theme_list'

# Clear Cron Jobs
wp cron event delete 'nuclen_process_batch'
wp cron event delete 'nuclen_poll_generation'
wp cron event delete 'nuclen_process_background_jobs'
wp cron event delete 'nuclen_cleanup_completed_jobs'
wp cron event delete 'nuclen_cache_cleanup'
wp cron event delete 'nuclen_scheduled_invalidation'
wp cron event delete 'nuclen_warm_cache'
wp cron event delete 'nuclen_cleanup_old_batches'
wp cron event delete 'nuclen_cleanup_orphaned_batches'
wp cron event delete 'nuclen_cleanup_content_locks'
wp cron event delete 'nuclen_theme_migration'
wp cron event delete 'nuclen_frequent_timeout_check'
wp cron event delete 'nuclen_cleanup_logs'
wp cron event delete 'nuclen_check_task_timeouts'
wp cron event delete 'nuclear_engagement_daily_generation'
wp cron event delete 'nuclen_check_generation_status'
wp cron event delete 'nuclen_cleanup_batch_transients'
wp cron event delete 'nuclen_service_health_check'
wp cron event delete 'nuclen_poll_batch'
wp cron event delete 'nuclen_check_stuck_tasks'
wp cron event delete 'nuclen_recheck_batch_counts'
wp cron event delete 'nuclen_check_task_completion'
wp cron event delete 'nuclen_check_batch_queue'
wp cron event delete 'nuclen_circuit_breaker_cleanup'
wp cron event delete 'nuclen_cleanup_pending_save'
wp cron event delete 'nuclen_recover_generation'
wp cron event delete 'nuclen_cleanup_stale_transients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'nuclen_pointer_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'nuclen_pointer_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'nuclen_pointer_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'nuclen_pointer_dismissed_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nuclen_quiz_protected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nuclen_quiz_protected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nuclen_quiz_protected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nuclen_quiz_protected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nuclen-quiz-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nuclen-quiz-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nuclen-quiz-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nuclen-quiz-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nuclen-summary-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nuclen-summary-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nuclen-summary-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nuclen-summary-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nuclen_toc_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nuclen_toc_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nuclen_toc_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nuclen_toc_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"

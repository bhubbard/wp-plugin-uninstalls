#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'divewp_db_version'
wp option delete 'divewp_version'
wp option delete 'divewp_feedback_settings'
wp option delete 'divewp_feedback_dismissed'
wp option delete 'divewp_install_time'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'divewp_feedback_reminder'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_timing_%' OR option_name LIKE '_site_transient_divewp_timing_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_test_config_%' OR option_name LIKE '_site_transient_divewp_test_config_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_evaluation_running_%' OR option_name LIKE '_site_transient_divewp_evaluation_running_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_db_test_rate_limit_%' OR option_name LIKE '_site_transient_divewp_db_test_rate_limit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_hosting_evaluation_%' OR option_name LIKE '_site_transient_divewp_hosting_evaluation_%'"
wp transient delete 'doing_cron'
wp transient delete 'divewp_benchmark_time_limit'
wp transient delete 'divewp_benchmark_session'
wp transient delete 'divewp_benchmark_enabled_tests'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_benchmark_concurrency_%' OR option_name LIKE '_site_transient_divewp_benchmark_concurrency_%'"
wp transient delete 'divewp_concurrency_worker_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_benchmark_database_%' OR option_name LIKE '_site_transient_divewp_benchmark_database_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_benchmark_performance_%' OR option_name LIKE '_site_transient_divewp_benchmark_performance_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_benchmark_resources_%' OR option_name LIKE '_site_transient_divewp_benchmark_resources_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_resource_test_%' OR option_name LIKE '_site_transient_divewp_resource_test_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_plugin_icon_%' OR option_name LIKE '_site_transient_divewp_plugin_icon_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_divewp_admin_login_%' OR option_name LIKE '_site_transient_divewp_admin_login_%'"
wp transient delete 'divewp_last_event_time'

# Clear Cron Jobs
wp cron event delete 'divewp_daily_cleanup'
wp cron event delete 'divewp_user_events_cleanup'
wp cron event delete 'divewp_refresh_cron_hooks'
wp cron event delete 'divewp_cleanup_cron_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'divewp_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'divewp_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'divewp_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'divewp_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'divewp_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'divewp_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'divewp_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'divewp_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'divewp_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'divewp_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'divewp_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'divewp_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'divewp_seo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'divewp_seo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'divewp_seo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'divewp_seo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'divewp_page_insights'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'divewp_page_insights'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'divewp_page_insights'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'divewp_page_insights'"

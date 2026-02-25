#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'suggester_tool_stats_%'"
wp option delete 'suggester_tool_counter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'suggester_tool_settings_%'"
wp option delete 'suggester_monthly_actions'
wp option delete 'suggester_monthly_reset_date'
wp option delete 'suggester_copy_migration_done'
wp option delete 'suggester_arabic_loaded'
wp option delete 'suggester_global_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'suggester_key_stats_%'"
wp option delete 'suggester_version'
wp option delete 'suggester_daily_count'
wp option delete 'suggester_weekly_count'
wp option delete 'suggester_monthly_count'
wp option delete 'suggester_yearly_count'
wp option delete 'suggester_last_reset_dates'

# Delete Transients
wp transient delete 'suggester_admin_message'
wp transient delete 'suggester_last_key_index_global'
wp transient delete 'suggester_key_error_global_gemini_0'
wp transient delete 'suggester_key_error_global_openrouter_1'
wp transient delete 'suggester_key_error_global_openrouter_2'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_suggester_last_key_index_%' OR option_name LIKE '_site_transient_suggester_last_key_index_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_gemini_0' OR option_name LIKE '_site_transient_%_gemini_0'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_openrouter_1' OR option_name LIKE '_site_transient_%_openrouter_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_openrouter_2' OR option_name LIKE '_site_transient_%_openrouter_2'"

# Clear Cron Jobs
wp cron event delete 'suggester_cleanup_errors'
wp cron event delete 'suggester_cleanup_usage'


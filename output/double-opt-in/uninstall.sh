#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'f12_cf7_doubleoptin_installed_at'
wp option delete 'f12-doi-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'f12_cf7_doubleoptin_installation_uuid'
wp option delete 'f12_cf7_doubleoptin_telemetry_counters'
wp option delete 'f12_cf7_doubleoptin_review_dismissed'
wp option delete 'f12_cf7_doubleoptin_review_remind_later'
wp option delete 'f12_cf7_doubleoptin_review_remind_count'

# Clear Cron Jobs
wp cron event delete 'f12_cf7_doubleoptin_daily_telemetry'
wp cron event delete 'dailyOptinClear'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'f12-cf7-doubleoptin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'f12-cf7-doubleoptin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'f12-cf7-doubleoptin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'f12-cf7-doubleoptin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"

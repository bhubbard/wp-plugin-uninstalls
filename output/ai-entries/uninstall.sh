#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AIEntries_question'
wp option delete 'AIEntries_news_api_key'
wp option delete 'AIEntries_num_calls'
wp option delete 'AIEntries_api_key_stable_diffusion'
wp option delete 'AIEntries_api_key'
wp option delete 'AIEntries_category'

# Delete Transients
wp transient delete 'last_six_hour_execution'

# Clear Cron Jobs
wp cron event delete 'AIEntries_daily_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_entries_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_entries_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_entries_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_entries_post'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'word_stats_options'
wp option delete 'word_stats_state'

# Clear Cron Jobs
wp cron event delete 'word_stats_worker'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'word_stats_cached'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'word_stats_cached'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'word_stats_cached'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'word_stats_cached'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'readability_ARI'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'readability_ARI'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'readability_ARI'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'readability_ARI'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'readability_CLI'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'readability_CLI'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'readability_CLI'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'readability_CLI'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'readability_LIX'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'readability_LIX'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'readability_LIX'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'readability_LIX'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'word_stats_word_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'word_stats_word_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'word_stats_word_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'word_stats_word_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'word_stats_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'word_stats_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'word_stats_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'word_stats_keywords'"

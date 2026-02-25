#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'wcp_schedule_initial_wordcount'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcp_word_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcp_word_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcp_word_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcp_word_count'"

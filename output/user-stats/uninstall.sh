#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_user-stats--options'
wp option delete 'user_stats_nag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_statz_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_statz_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_statz_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_statz_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asz_dollar_per_article'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asz_dollar_per_article'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asz_dollar_per_article'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asz_dollar_per_article'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asz_dollar_per_thousand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asz_dollar_per_thousand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asz_dollar_per_thousand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asz_dollar_per_thousand'"

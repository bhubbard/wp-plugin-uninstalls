#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wheeloflife_queue_flush_rewrite_rules'
wp option delete 'wheel_of_life_CTA'
wp option delete 'wheel_of_life_social_sharing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wheelId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wheelId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wheelId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wheelId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chartData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chartData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chartData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chartData'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chartOptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chartOptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chartOptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chartOptions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chartType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chartType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chartType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chartType'"

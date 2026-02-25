#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'OPH_interval'
wp option delete 'OPH_interval_aleatoire'
wp option delete 'OPH_age_limit'
wp option delete 'OPH_show_original_pubdate'
wp option delete 'OPH_give_credit'
wp option delete 'OPH_pos'
wp option delete 'OPH_at_top'
wp option delete 'OPH_omit_cats'
wp option delete 'OPH_FORCED_POSTS'
wp option delete 'OPH_last_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'OPH_original_pub_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'OPH_original_pub_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'OPH_original_pub_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'OPH_original_pub_date'"

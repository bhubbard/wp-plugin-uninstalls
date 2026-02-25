#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'updp_last_update'
wp option delete 'updp_interval'
wp option delete 'updp_interval_slop'
wp option delete 'updp_age_limit'
wp option delete 'updp_omit_cats'
wp option delete 'updp_show_original_pubdate'
wp option delete 'updp_pos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updp_original_pub_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updp_original_pub_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updp_original_pub_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updp_original_pub_date'"

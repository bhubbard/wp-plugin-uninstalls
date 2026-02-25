#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rop_last_update'
wp option delete 'rop_interval'
wp option delete 'rop_interval_slop'
wp option delete 'rop_age_limit'
wp option delete 'rop_omit_cats'
wp option delete 'rop_show_original_pubdate'
wp option delete 'rop_pos'
wp option delete 'rop_at_top'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rop_original_pub_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rop_original_pub_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rop_original_pub_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rop_original_pub_date'"

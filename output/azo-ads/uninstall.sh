#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'azoads_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'aa_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'aa_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'aa_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'aa_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aa_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aa_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aa_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aa_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aa_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aa_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aa_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aa_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aa_expire_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aa_expire_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aa_expire_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aa_expire_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aa_show_by_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aa_show_by_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aa_show_by_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aa_show_by_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aa_adsense_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aa_adsense_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aa_adsense_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aa_adsense_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aa_adsense_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aa_adsense_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aa_adsense_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aa_adsense_size'"

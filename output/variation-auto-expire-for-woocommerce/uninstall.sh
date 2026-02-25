#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ycve_timezone'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yc_exp_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yc_exp_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yc_exp_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yc_exp_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yc_exp_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yc_exp_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yc_exp_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yc_exp_date'"

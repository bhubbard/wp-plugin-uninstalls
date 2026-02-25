#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'g_whm_configs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ex_rate_from_cur'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ex_rate_from_cur'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ex_rate_from_cur'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ex_rate_from_cur'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ex_rate_to_cur'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ex_rate_to_cur'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ex_rate_to_cur'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ex_rate_to_cur'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ex_rate_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ex_rate_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ex_rate_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ex_rate_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ex_rate_flag_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ex_rate_flag_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ex_rate_flag_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ex_rate_flag_from'"

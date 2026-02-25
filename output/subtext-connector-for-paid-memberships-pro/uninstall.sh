#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fe_subtext_pmp_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subtext_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subtext_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subtext_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subtext_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subtext_opt_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subtext_opt_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subtext_opt_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subtext_opt_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_sphone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_sphone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_sphone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_sphone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"

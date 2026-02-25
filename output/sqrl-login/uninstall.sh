#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sqrl_redirect_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrl_idk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrl_idk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrl_idk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrl_idk'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrl_hardlock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrl_hardlock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrl_hardlock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrl_hardlock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrl_disable_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrl_disable_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrl_disable_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrl_disable_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrl_sqrlonly'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrl_sqrlonly'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrl_sqrlonly'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrl_sqrlonly'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrl_suk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrl_suk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrl_suk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrl_suk'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrl_vuk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrl_vuk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrl_vuk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrl_vuk'"

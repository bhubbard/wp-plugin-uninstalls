#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yw_protect_my_infos_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yw_protect_my_infos_dismissed_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yw_protect_my_infos_dismissed_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yw_protect_my_infos_dismissed_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yw_protect_my_infos_dismissed_notice'"

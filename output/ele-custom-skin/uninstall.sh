#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ele_custom_skin_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ele_custom_skin_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ele_custom_skin_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ele_custom_skin_notice_dismissed'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qahm_sitemanage'
wp option delete 'qahm_plugin_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qahm_advanced_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qahm_advanced_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qahm_advanced_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qahm_advanced_notice_dismissed'"

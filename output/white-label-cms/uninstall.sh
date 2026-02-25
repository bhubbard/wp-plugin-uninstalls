#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wlcms_messages'
wp option delete 'wlcms_options'
wp option delete 'wlcms_o_ver'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'vum_hide_dashboard%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'vum_hide_dashboard%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'vum_hide_dashboard%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'vum_hide_dashboard%'"

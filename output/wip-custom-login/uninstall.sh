#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wip_custom_login_settings'
wp option delete 'wip_custom_login_fontlist'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wip_custom_login_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wip_custom_login_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wip_custom_login_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wip_custom_login_dismissed_notice_%'"

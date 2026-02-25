#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'janrain_capture_widget_sso_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_uuid'"

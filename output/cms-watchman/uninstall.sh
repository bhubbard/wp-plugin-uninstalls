#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cms_watchman_current_cms'
wp option delete 'cms_watchman_access_token'
wp option delete 'cms_watchman_client_id'
wp option delete 'cms_watchman_client_secret'
wp option delete 'cms_watchman_new_update'
wp option delete 'cms_watchman_welcom_display'

# Clear Cron Jobs
wp cron event delete 'cms_watchman_plugin_update_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cms_watchman_company_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cms_watchman_company_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cms_watchman_company_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cms_watchman_company_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cms_watchman_company_token_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cms_watchman_company_token_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cms_watchman_company_token_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cms_watchman_company_token_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cms_watchman_auth_token_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cms_watchman_auth_token_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cms_watchman_auth_token_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cms_watchman_auth_token_%'"

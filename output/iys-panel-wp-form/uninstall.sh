#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'im4wp_flash_messages'
wp option delete 'im4wp'
wp option delete 'im4wp_lite_version'
wp option delete 'im4wp_version'
wp option delete 'im4wp_default_form_id'
wp option delete 'im4wp_form_stylesheets'
wp option delete 'im4wp_groupings_map'

# Delete Transients
wp transient delete 'im4wp_iyspanel_lists'
wp transient delete 'im4wp_iyspanel_brands'
wp transient delete 'im4wp_iyspanel_originators'
wp transient delete 'im4wp_api_key_notice_dismissed'

# Clear Cron Jobs
wp cron event delete 'im4wp_usage_tracking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_im4wp_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_im4wp_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_im4wp_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_im4wp_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'text_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'text_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'text_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'text_%'"

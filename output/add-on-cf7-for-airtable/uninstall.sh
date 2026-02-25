#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'add-on-cf7-for-airtable/delete-upload-files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7_airtable_addon_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7_airtable_addon_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7_airtable_addon_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7_airtable_addon_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpc_airtable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpc_airtable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpc_airtable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpc_airtable'"

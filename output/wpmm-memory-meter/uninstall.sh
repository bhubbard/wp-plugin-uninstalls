#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmm_memory_meter_logs_latest'
wp option delete 'wpmm_memory_meter_logs_flagged'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmm_memory_meter_admin_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmm_memory_meter_admin_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmm_memory_meter_admin_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmm_memory_meter_admin_notice_dismissed'"

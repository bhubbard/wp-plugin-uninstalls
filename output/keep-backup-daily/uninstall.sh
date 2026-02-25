#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kbfnr_settings'
wp option delete 'kbfnr_error_log'
wp option delete 'kbfnr_usage'
wp option delete 'kbfnr_schema_version'
wp option delete 'ms_files_rewriting'
wp option delete 'active_sitewide_plugins'
wp option delete 'kbd_settings'
wp option delete 'kbd_backup_aliases'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'kbfnr_dismiss_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'kbfnr_dismiss_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'kbfnr_dismiss_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kbfnr_dismiss_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'kbfnr_reminder_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'kbfnr_reminder_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'kbfnr_reminder_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'kbfnr_reminder_%'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wally_monitor_settings'
wp option delete 'wally_monitor_history'
wp option delete 'wally_monitor_full_report'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wally_monitor_last_scan_%'"

# Delete Transients
wp transient delete 'wally_monitor_scan_lock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wally_needs_reanalysis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wally_needs_reanalysis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wally_needs_reanalysis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wally_needs_reanalysis'"

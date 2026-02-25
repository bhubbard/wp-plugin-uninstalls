#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_lock' OR option_name LIKE '_site_transient_%_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%activating' OR option_name LIKE '_site_transient_%activating'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"

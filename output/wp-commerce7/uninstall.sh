#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'c7wp_activation'
wp option delete 'c7wp_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_c7wp_%' OR option_name LIKE '_site_transient_c7wp_%'"
wp transient delete 'c7wp-admin-notice-pages'
wp transient delete 'c7wp-admin-notice-pages-missing'
wp transient delete 'c7wp_remote_notices'

# Clear Cron Jobs
wp cron event delete 'c7wp_fetch_remote_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'c7wp_notice_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'c7wp_notice_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'c7wp_notice_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'c7wp_notice_dismissed_%'"

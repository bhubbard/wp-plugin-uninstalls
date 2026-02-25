#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpio_api_key'
wp option delete 'wpio_site_id'
wp option delete 'wpio_cdn_url'
wp option delete 'wpio_status'
wp option delete 'wpio_registered_domain'
wp option delete 'wpio_cache_version'

# Delete Transients
wp transient delete 'wpio_activation_redirect'
wp transient delete 'wpio_usage_info'

# Clear Cron Jobs
wp cron event delete 'wpio_daily_status_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpio_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpio_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpio_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpio_dismissed_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpio_dismissed_limit_reached'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpio_dismissed_limit_reached'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpio_dismissed_limit_reached'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpio_dismissed_limit_reached'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpio_dismissed_limit_warning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpio_dismissed_limit_warning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpio_dismissed_limit_warning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpio_dismissed_limit_warning'"

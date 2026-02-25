#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icouk_hijri_month_version'
wp option delete 'icouk_hijri_month_activated'

# Clear Cron Jobs
wp cron event delete 'icouk_hijri_month_cache_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icouk_hijri_month_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icouk_hijri_month_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icouk_hijri_month_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icouk_hijri_month_settings'"

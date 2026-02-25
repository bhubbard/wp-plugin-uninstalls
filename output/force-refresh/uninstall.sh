#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cron'
wp option delete 'force_refresh_current_site_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'force_refresh_current_page_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'force_refresh_current_page_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'force_refresh_current_page_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'force_refresh_current_page_version'"

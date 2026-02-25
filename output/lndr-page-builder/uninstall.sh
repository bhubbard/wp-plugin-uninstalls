#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lndr_settings'
wp option delete 'lndr_version'

# Clear Cron Jobs
wp cron event delete 'lndr_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lndr_project_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lndr_project_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lndr_project_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lndr_project_id'"

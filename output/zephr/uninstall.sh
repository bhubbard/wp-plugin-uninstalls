#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zephr'
wp option delete 'zephr_user_migration_success'

# Delete Transients
wp transient delete 'zephr_graphql_sites'
wp transient delete 'zephr_browser_version'

# Clear Cron Jobs
wp cron event delete 'zephr_update_proxied_pages'
wp cron event delete 'do_zephr_user_migrate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zephr_feature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zephr_feature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zephr_feature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zephr_feature'"

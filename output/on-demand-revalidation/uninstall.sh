#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'on_demand_revalidation_default_settings'
wp option delete 'on_demand_revalidation_post_update_settings'

# Clear Cron Jobs
wp cron event delete 'on_demand_revalidation_on_post_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_permalink'"

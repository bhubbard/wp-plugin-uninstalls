#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdw_matomo_migrated_v143'
wp option delete 'ellpt_matomo_url'
wp option delete 'ellpt_matomo_site_id'
wp option delete 'mdw_matomo_url'
wp option delete 'mdw_matomo_site_id'
wp option delete 'mdw_matomo_source'
wp option delete 'mdw_matomo_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdw_last_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdw_last_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdw_last_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdw_last_period'"

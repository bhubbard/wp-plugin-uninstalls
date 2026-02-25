#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multi_manager_wp_activated'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'multi_manager_wp_login_cleanup_expired_tokens'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multi_manager_wp_login_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multi_manager_wp_login_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multi_manager_wp_login_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multi_manager_wp_login_token'"

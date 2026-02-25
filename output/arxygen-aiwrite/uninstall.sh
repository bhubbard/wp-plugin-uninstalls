#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arxygen_aiwrite_private_key'
wp option delete 'arxygen_aiwrite_advanced_logging'
wp option delete 'arxygen_aiwrite_admin_email'

# Delete Transients
wp transient delete 'arxygen_aiwrite_activate_redirect'

# Clear Cron Jobs
wp cron event delete 'arxygen_aiwrite_remote_server_call_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu_label'"

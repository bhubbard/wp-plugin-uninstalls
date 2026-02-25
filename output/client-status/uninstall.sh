#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'client_status_options'

# Clear Cron Jobs
wp cron event delete 'client_status_update_all_clients_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_client_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_client_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_client_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_client_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_client_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_client_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_client_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_client_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_client_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_client_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_client_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_client_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_client_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_client_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_client_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_client_last_update'"

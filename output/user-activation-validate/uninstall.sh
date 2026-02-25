#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uav_opt_deadline'
wp option delete 'uav_opt_deadline_warning'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uav_opt_resent_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uav_opt_resent_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uav_opt_resent_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uav_opt_resent_count'"

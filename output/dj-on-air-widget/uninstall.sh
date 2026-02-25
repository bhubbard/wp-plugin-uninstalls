#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dj_access_roles'
wp option delete 'dj_default_name'
wp option delete 'dj_time_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shifts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shifts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shifts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shifts'"

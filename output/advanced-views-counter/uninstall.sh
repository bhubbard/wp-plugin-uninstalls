#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advico_settings_count'
wp option delete 'advico_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advico_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advico_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advico_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advico_views'"

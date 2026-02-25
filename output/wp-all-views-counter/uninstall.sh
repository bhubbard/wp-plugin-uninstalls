#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'views_counter_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_views'"

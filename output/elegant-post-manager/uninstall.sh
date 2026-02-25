#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Elegant_Post_Manager_Visit_Count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Elegant_Post_Manager_Visit_Count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Elegant_Post_Manager_Visit_Count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Elegant_Post_Manager_Visit_Count'"

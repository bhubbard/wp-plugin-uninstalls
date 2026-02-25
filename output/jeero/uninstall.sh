#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jeero/enable_custom_post_types'
wp option delete 'jeero/enable_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jeero/import/post/last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jeero/import/post/last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jeero/import/post/last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jeero/import/post/last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventEndDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventShowMapLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventShowMapLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventShowMapLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventShowMapLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enddate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enddate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enddate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enddate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tickets_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tickets_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tickets_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tickets_status'"

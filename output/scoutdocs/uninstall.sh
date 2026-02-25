#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scoutdocs_site_key'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scoutdocs_user_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scoutdocs_user_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scoutdocs_user_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scoutdocs_user_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scoutdocs_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scoutdocs_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scoutdocs_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scoutdocs_user_id'"

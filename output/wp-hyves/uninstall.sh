#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_dl_widget'
wp option delete 'wphyves_scraps'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hyves_added_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hyves_added_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hyves_added_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hyves_added_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hyves_post_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hyves_post_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hyves_post_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hyves_post_url'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cackle_social_login_siteId'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cackle_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cackle_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cackle_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cackle_avatar'"

#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lukso_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lukso_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lukso_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lukso_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lukso_login_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lukso_login_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lukso_login_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lukso_login_avatar'"

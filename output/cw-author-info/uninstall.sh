#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'color1'
wp option delete 'color2'
wp option delete 'color3'
wp option delete 'ver_box'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cw_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cw_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cw_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cw_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cw_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cw_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cw_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cw_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cw_google_plus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cw_google_plus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cw_google_plus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cw_google_plus'"

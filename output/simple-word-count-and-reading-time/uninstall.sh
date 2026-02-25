#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swcart-oldposts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swcart-word-count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swcart-word-count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swcart-word-count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swcart-word-count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swcart-reading-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swcart-reading-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swcart-reading-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swcart-reading-time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swcart-reading-time-raw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swcart-reading-time-raw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swcart-reading-time-raw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swcart-reading-time-raw'"

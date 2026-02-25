#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menugate_logged_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menugate_logged_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menugate_logged_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menugate_logged_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menugate_logged_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menugate_logged_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menugate_logged_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menugate_logged_out'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menugate_device'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menugate_device'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menugate_device'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menugate_device'"

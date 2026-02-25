#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tryst_option'
wp option delete 'tryst'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tryst_available_ops'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tryst_available_ops'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tryst_available_ops'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tryst_available_ops'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'customcss'
wp option delete 'profile-link'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'destination_destination'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'destination_destination'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'destination_destination'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'destination_destination'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'second_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'second_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'second_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'second_featured_image'"

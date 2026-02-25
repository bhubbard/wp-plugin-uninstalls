#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mybox_option_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zone_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zone_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zone_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zone_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondary_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondary_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondary_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondary_phone'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dailyco_settings'

# Delete Transients
wp transient delete 'dailyco_room_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dailyco_api_room'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dailyco_api_room'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dailyco_api_room'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dailyco_api_room'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"

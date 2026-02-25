#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'digitalSamba_Settings'

# Delete Transients
wp transient delete 'digitalSamba_room_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_digitalSamba_api_room'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_digitalSamba_api_room'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_digitalSamba_api_room'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_digitalSamba_api_room'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digitalSamba_room_withtoken'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digitalSamba_room_withtoken'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digitalSamba_room_withtoken'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digitalSamba_room_withtoken'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_news'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_news'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_news'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_news'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"

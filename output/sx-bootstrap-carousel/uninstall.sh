#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sxbc_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sxbc_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sxbc_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sxbc_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sxbc_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sxbc_image_url_openblank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sxbc_image_url_openblank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sxbc_image_url_openblank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sxbc_image_url_openblank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sxbc_image_link_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sxbc_image_link_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sxbc_image_link_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sxbc_image_link_text'"

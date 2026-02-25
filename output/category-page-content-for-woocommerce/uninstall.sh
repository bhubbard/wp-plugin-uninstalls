#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpcfw_displayLocation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_content_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_content_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_content_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_content_setting'"

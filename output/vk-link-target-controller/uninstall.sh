#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom-post-types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vk-ltc-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vk-ltc-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vk-ltc-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vk-ltc-link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vk-ltc-target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vk-ltc-target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vk-ltc-target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vk-ltc-target'"

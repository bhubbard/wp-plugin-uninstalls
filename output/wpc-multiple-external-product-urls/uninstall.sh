#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcme_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcme_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcme_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcme_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcme_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcme_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcme_purchasable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcme_purchasable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcme_purchasable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcme_purchasable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcme_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcme_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcme_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcme_urls'"

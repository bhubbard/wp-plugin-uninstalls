#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awwlm_general_settings'
wp option delete 'awwlm_button_settings'
wp option delete 'awwlm_page_settings'
wp option delete 'awwlm_wishlist_page'
wp option delete 'awwlm_save_for_later_settings'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'woocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awwlm_is_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awwlm_is_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awwlm_is_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awwlm_is_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awwlm_savelist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awwlm_savelist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awwlm_savelist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awwlm_savelist'"

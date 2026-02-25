#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woa_sf_activation_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete 'woocommerce_shop_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woa_sf_title_toggle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woa_sf_title_toggle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woa_sf_title_toggle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woa_sf_title_toggle'"

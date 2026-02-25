#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dp_shop_page_id'
wp option delete 'dp_discontinued_text'
wp option delete 'dp_alt_text'
wp option delete 'dp_hide_from_shop'
wp option delete 'dp_hide_from_search'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'do_update_dp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_discontinued'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_discontinued'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_discontinued'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_discontinued'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_from_shop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_from_shop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_from_shop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_from_shop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_from_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_from_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_from_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_from_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alt_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alt_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alt_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alt_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_discontinued_product_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_discontinued_product_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_discontinued_product_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_discontinued_product_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alt_product_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alt_product_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alt_product_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alt_product_text'"

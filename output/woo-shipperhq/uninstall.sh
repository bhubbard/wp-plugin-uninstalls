#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_shipperhq_settings'
wp option delete 'shipperhq_debug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listing_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listing_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listing_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listing_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'listing_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'listing_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'listing_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'listing_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'must_ship_freight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'must_ship_freight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'must_ship_freight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'must_ship_freight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'freight_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'freight_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'freight_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'freight_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipperhq_warehouse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipperhq_warehouse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipperhq_warehouse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipperhq_warehouse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipperhq_shipping_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipperhq_shipping_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipperhq_shipping_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipperhq_shipping_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipperhq_dim_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipperhq_dim_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipperhq_dim_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipperhq_dim_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ship_separately'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ship_separately'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ship_separately'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ship_separately'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipperhq_hs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipperhq_hs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipperhq_hs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipperhq_hs_code'"

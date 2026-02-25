#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sdwac_url'
wp option delete 'sdwac_first_time_purchase_coupon'
wp option delete 'sdwac_price_cut_from'
wp option delete 'sdwac_multi'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sdwac_coupon_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sdwac_coupon_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sdwac_coupon_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sdwac_coupon_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdwac_coupon_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdwac_coupon_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdwac_coupon_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdwac_coupon_panel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdwac_coupon_main'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdwac_coupon_main'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdwac_coupon_main'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdwac_coupon_main'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sdwac_coupon_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sdwac_coupon_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sdwac_coupon_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sdwac_coupon_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sdevs_coupon_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sdevs_coupon_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sdevs_coupon_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sdevs_coupon_meta'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_redirect_after_add'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uou_bookable_main_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uou_bookable_main_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uou_bookable_main_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uou_bookable_main_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookable_availibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookable_availibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookable_availibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookable_availibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'own_availibility_date_ranges'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'own_availibility_date_ranges'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'own_availibility_date_ranges'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'own_availibility_date_ranges'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookable_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookable_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookable_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookable_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookable_availibility_resource'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookable_availibility_resource'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookable_availibility_resource'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookable_availibility_resource'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"

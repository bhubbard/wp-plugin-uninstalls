#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swiftcoupons_auto_apply_coupons'
wp option delete 'swift_coupons_activate_time'
wp option delete 'swift_coupons_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftcoupons_add_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftcoupons_add_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftcoupons_add_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftcoupons_add_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftcoupons_bxgx'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftcoupons_bxgx'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftcoupons_bxgx'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftcoupons_bxgx'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftcoupons_url_apply_override_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftcoupons_url_apply_override_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftcoupons_url_apply_override_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftcoupons_url_apply_override_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftcoupons_scheduler'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftcoupons_scheduler'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftcoupons_scheduler'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftcoupons_scheduler'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftcoupons_qualifiers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftcoupons_qualifiers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftcoupons_qualifiers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftcoupons_qualifiers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftcoupons_url_apply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftcoupons_url_apply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftcoupons_url_apply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftcoupons_url_apply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftcoupons_auto_apply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftcoupons_auto_apply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftcoupons_auto_apply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftcoupons_auto_apply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swiftcoupons_shipping_discounts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swiftcoupons_shipping_discounts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swiftcoupons_shipping_discounts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swiftcoupons_shipping_discounts'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpmwc_product_id'
wp option delete 'cpmwc_user_roles'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpmwc_coupon_deducted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpmwc_coupon_deducted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpmwc_coupon_deducted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpmwc_coupon_deducted'"

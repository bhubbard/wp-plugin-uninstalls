#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fd_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fd_coupon_lomadee_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fd_coupon_lomadee_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fd_coupon_lomadee_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fd_coupon_lomadee_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fd_store_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fd_store_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fd_store_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fd_store_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fd_offer_fastdee_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fd_offer_fastdee_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fd_offer_fastdee_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fd_offer_fastdee_id'"

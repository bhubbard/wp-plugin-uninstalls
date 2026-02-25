#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wac_pro_version'
wp option delete 'wac_db_version'
wp option delete 'wac_uninstall'
wp option delete 'wac_cart_page'
wp option delete 'wac_checkout_page'
wp option delete 'wac_bulk_apply_future'
wp option delete 'wac_bulk_url_future'
wp option delete 'wac_coupon_email'
wp option delete 'wac_email_prompt'
wp option delete 'wac_email_err'
wp option delete 'wac_email_dismiss'
wp option delete 'wac_min_qty_ntf'
wp option delete 'wac_max_qty_ntf'
wp option delete 'wac_sc_cart'
wp option delete 'wac_dismiss_upgrade'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_qty_ntf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_qty_ntf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_qty_ntf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_qty_ntf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_auto_apply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_auto_apply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_auto_apply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_auto_apply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_url_apply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_url_apply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_url_apply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_url_apply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_prefix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_prefix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_prefix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_prefix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_min_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_min_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_min_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_min_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_max_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_max_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_max_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_max_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_min_qty_ntf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_min_qty_ntf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_min_qty_ntf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_min_qty_ntf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_max_qty_ntf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_max_qty_ntf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_max_qty_ntf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_max_qty_ntf'"

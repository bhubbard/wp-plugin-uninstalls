#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_ecards_credit'
wp option delete 'wp_ecards_woocommerce_enabled'
wp option delete 'wp_ecards_global_thankyou_content'
wp option delete 'wp_ecards_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_ecards_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_ecards_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_ecards_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_ecards_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_ecard_option_btn_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_ecard_option_btn_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_ecard_option_btn_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_ecard_option_btn_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_ecard_option_post_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_ecard_option_post_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_ecard_option_post_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_ecard_option_post_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_ecard_button_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_ecard_button_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_ecard_button_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_ecard_button_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_ecard_modal_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_ecard_modal_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_ecard_modal_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_ecard_modal_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_ecard_thankyou_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_ecard_thankyou_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_ecard_thankyou_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_ecard_thankyou_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_ecard_qty_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_ecard_qty_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_ecard_qty_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_ecard_qty_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"

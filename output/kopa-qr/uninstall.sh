#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_kopa_custom_img_position'
wp option delete 'woocommerce_kopa_max_width'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_kopa_qr_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_kopa_qr_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_kopa_qr_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_kopa_qr_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kopa_qr_code_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kopa_qr_code_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kopa_qr_code_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kopa_qr_code_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kopa_deep_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kopa_deep_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kopa_deep_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kopa_deep_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kopa_qr_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kopa_qr_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kopa_qr_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kopa_qr_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_display_kopa_qr_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_display_kopa_qr_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_display_kopa_qr_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_display_kopa_qr_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kopa_qr_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kopa_qr_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kopa_qr_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kopa_qr_post_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kopa_qr_code_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kopa_qr_code_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kopa_qr_code_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kopa_qr_code_request'"

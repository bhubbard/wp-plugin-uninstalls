#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_qr_pay_gateway_settings'
wp option delete 'qr_pay_gateway_enabled'
wp option delete 'qr_pay_gateway_title'
wp option delete 'qr_pay_gateway_order_status'
wp option delete 'qr_pay_gateway_description'
wp option delete 'qr_pay_gateway_instructions'
wp option delete 'qr_pay_gateway_upload_qr'
wp option delete 'qr_pay_gateway_media'
wp option delete 'qr_pay_gateway_preview_qr'
wp option delete 'qr_pay_gateway_account_name'
wp option delete 'qr_pay_gateway_qr_type_selector'
wp option delete 'qr_pay_gateway_qr_required_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'essb_full_pay_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'essb_full_pay_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'essb_full_pay_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'essb_full_pay_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'essb_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'essb_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'essb_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'essb_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'essb_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'essb_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'essb_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'essb_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'essb_transaction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'essb_transaction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'essb_transaction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'essb_transaction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'full_pay_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'full_pay_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'full_pay_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'full_pay_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_type'"

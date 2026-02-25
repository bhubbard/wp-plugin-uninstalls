#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'v3d_currency'
wp option delete 'v3d_cross_domain'
wp option delete 'v3d_file_api'
wp option delete 'v3d_price_decimals'
wp option delete 'v3d_order_email'
wp option delete 'v3d_order_email_from_name'
wp option delete 'v3d_order_email_from_email'
wp option delete 'v3d_chrome_path'
wp option delete 'v3d_require_billing_address'
wp option delete 'v3d_require_shipping_address'
wp option delete 'v3d_custom_products'
wp option delete 'v3d_order_api'
wp option delete 'v3d_payment_paypal'
wp option delete 'v3d_payment_paypal_id'
wp option delete 'v3d_payment_success_status'
wp option delete 'v3d_product_api'
wp option delete 'v3d_send_form_email_subject'
wp option delete 'v3d_send_form_email_attachments'
wp option delete 'v3d_send_form_api'
wp option delete 'v3d_merchant_logo'
wp option delete 'v3d_merchant_logo_width'
wp option delete 'v3d_order_failed_text'
wp option delete 'v3d_merchant_name'
wp option delete 'v3d_merchant_address1'
wp option delete 'v3d_merchant_address2'
wp option delete 'v3d_merchant_city'
wp option delete 'v3d_merchant_state'
wp option delete 'v3d_merchant_postcode'
wp option delete 'v3d_merchant_country'
wp option delete 'v3d_merchant_phone'
wp option delete 'v3d_quote_valid'
wp option delete 'v3d_order_success_text'
wp option delete 'v3d_upload_mime_types'
wp option delete 'v3d_order_email_new_notify'
wp option delete 'v3d_order_email_new_notify_user'
wp option delete 'v3d_order_email_new_subject'
wp option delete 'v3d_order_email_new_subject_user'
wp option delete 'v3d_order_email_new_content'
wp option delete 'v3d_order_email_new_content_user'
wp option delete 'v3d_order_email_new_attach_custom'
wp option delete 'v3d_order_email_new_attach_quote'
wp option delete 'v3d_order_email_new_attach_invoice'
wp option delete 'v3d_order_email_update_notify'
wp option delete 'v3d_order_email_update_notify_user'
wp option delete 'v3d_order_email_update_subject'
wp option delete 'v3d_order_email_update_subject_user'
wp option delete 'v3d_order_email_update_content'
wp option delete 'v3d_order_email_update_content_user'
wp option delete 'v3d_order_email_update_attach_custom'
wp option delete 'v3d_order_email_update_attach_quote'
wp option delete 'v3d_order_email_update_attach_invoice'
wp option delete 'v3d_order_email_quote_subject_user'
wp option delete 'v3d_order_email_quote_content_user'
wp option delete 'v3d_order_email_invoice_subject_user'
wp option delete 'v3d_order_email_invoice_content_user'
wp option delete 'v3d_quote_notes'
wp option delete 'v3d_invoice_notes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'canvas_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'canvas_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'canvas_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'canvas_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'canvas_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'canvas_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'canvas_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'canvas_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allow_fullscreen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allow_fullscreen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allow_fullscreen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allow_fullscreen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xr_spatial_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xr_spatial_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xr_spatial_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xr_spatial_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cover_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cover_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cover_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cover_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'download_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'download_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'download_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'download_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'v3d_app_show_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'v3d_app_show_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'v3d_app_show_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'v3d_app_show_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'v3d_app_switch_on_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'v3d_app_switch_on_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'v3d_app_switch_on_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'v3d_app_switch_on_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'v3d_app_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'v3d_app_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'v3d_app_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'v3d_app_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'encrypt_pdf'
wp option delete 'buyer_info_text'
wp option delete 'ebook_store_random_password'
wp option delete 'ebook_store_blank_password'
wp option delete 'ebook_store_owner_password'
wp option delete 'disable_pdf_printing'
wp option delete 'disable_annot-forms'
wp option delete 'disable_pdf_copy'
wp option delete 'disable_pdf_modify'
wp option delete 'ebook_store_buy_link_font_size'
wp option delete 'ebook_store_title_font_size'
wp option delete 'attach_files'
wp option delete 'downloads_limit'
wp option delete 'ebook_store_license_key'
wp option delete 'ebook_store_locale'
wp option delete 'email_delivery'
wp option delete 'link_expiration'
wp option delete 'form_scale'
wp option delete 'paypal_account'
wp option delete 'vat_percent'
wp option delete 'ebook_store_woocommerce_integration'
wp option delete 'ebook_store_wp_affiliate_integration'
wp option delete 'formEnabled'
wp option delete 'kindleDelivery'
wp option delete 'ebook_store_woocommerce_integration_no_added_to_cart'
wp option delete 'ebook_store_woocommerce_required_order_status'
wp option delete 'ebook_store_disable_cover_buy_now'
wp option delete 'ebook_store_hide_buy_now'
wp option delete 'ebook_store_viewer_js'
wp option delete 'ebook_store_silent_registration'
wp option delete 'ebook_store_woocommerce_pdf_reader'
wp option delete 'ebook_store_no_autorefresh'
wp option delete 'ebook_store_no_viewerjs_previews'
wp option delete 'ebook_store_wpforms_default_form_force'
wp option delete 'mailchimp_api_key'
wp option delete 'mailchimp_lists'
wp option delete 'ebook_store_allow_echeck'
wp option delete 'ebook_store_require_shipping'
wp option delete 'paypal_currency'
wp option delete 'paypal_language'
wp option delete 'paypal_return_button_text'
wp option delete 'paypal_sandbox'
wp option delete 'paypal_verify_transactions'
wp option delete 'buyer_info'
wp option delete 'ebook_store_watermark_color_hex'
wp option delete 'ebook_store_buyer_info_position'
wp option delete 'ebook_store_watermark_mode'
wp option delete 'ebook_store_checkout_page'
wp option delete 'encrypt_files_for_logged_in_users'
wp option delete 'pdf_orientation'
wp option delete 'qr_code'
wp option delete 'ebook_store_pdfjs'
wp option delete 'thankyou_page'
wp option delete 'ebook_store_cancel_page'
wp option delete 'email_delivery_subject'
wp option delete 'email_delivery_text'
wp option delete 'formContent'
wp option delete 'hideHostingSection'
wp option delete 'ebookstorewpsc'
wp option delete 'stripe_publishable_key'
wp option delete 'stripe_secret_key'
wp option delete 'stripe_webhook_secret'
wp option delete 'stripe_cancel_url'
wp option delete 'stripe_integration_enabled'
wp option delete 'stripe_button_text'
wp option delete 'pdf_viewer_height'
wp option delete 'graduation_notification_email'
wp option delete 'graduation_notification_email_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_wp_custom_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_wp_custom_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_wp_custom_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_wp_custom_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'downloads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_gross'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formData'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'downloadlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'downloadlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'downloadlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'downloadlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_wp_custom_attachment_side_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_wp_custom_attachment_side_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_wp_custom_attachment_side_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_wp_custom_attachment_side_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_wp_custom_attachment_cover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_wp_custom_attachment_cover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_wp_custom_attachment_cover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_wp_custom_attachment_cover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_wp_custom_attachment_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_wp_custom_attachment_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_wp_custom_attachment_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_wp_custom_attachment_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_wp_custom_attachment_pdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_wp_custom_attachment_pdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_wp_custom_attachment_pdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_wp_custom_attachment_pdf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_bonus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_bonus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_bonus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_bonus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ebook_wp_custom_attachment_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ebook_wp_custom_attachment_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ebook_wp_custom_attachment_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ebook_wp_custom_attachment_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_store_alternative_location_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_store_alternative_location_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_store_alternative_location_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_store_alternative_location_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_store_alternative_location_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_store_alternative_location_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_store_alternative_location_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_store_alternative_location_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_store_alternative_location_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_store_alternative_location_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_store_alternative_location_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_store_alternative_location_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'residence_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'residence_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'residence_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'residence_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address_street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address_street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address_street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address_street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'md5_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'md5_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'md5_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'md5_nonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'encrypted_pdf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'encrypted_pdf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'encrypted_pdf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'encrypted_pdf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'item_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'item_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'item_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'item_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_store_book_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_store_book_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_store_book_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_store_book_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_ebook_store_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_ebook_store_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_ebook_store_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_ebook_store_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_store_graduation_date_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_store_graduation_date_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_store_graduation_date_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_store_graduation_date_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_store_graduation_date_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_store_graduation_date_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_store_graduation_date_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_store_graduation_date_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_store_graduation_date_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_store_graduation_date_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_store_graduation_date_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_store_graduation_date_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebook_store_graduation_date_series'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebook_store_graduation_date_series'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebook_store_graduation_date_series'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebook_store_graduation_date_series'"

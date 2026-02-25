#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgv_emailsubject'
wp option delete 'wpgv_emailbodyperinvoice'
wp option delete 'wpgv_emailbody'
wp option delete 'wpgv_recipientemailsubject'
wp option delete 'wpgv_recipientemailbody'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpgv_adminemailsubject'
wp option delete 'wpgv_adminemailbody'
wp option delete 'wpgv_successpagemessage'
wp option delete 'wpgv_format_prices'
wp option delete 'wpgv_before_add_to_cart_quantity_theme_fix'
wp option delete 'wpgv_termstext'
wp option delete 'wpgv_custom_css'
wp option delete 'wpgv_stripe_alternative_text'
wp option delete 'wpgv_buying_for'
wp option delete 'wpgv_hide_price_voucher'
wp option delete 'wpgv_leftside_notice'
wp option delete 'wpgv_voucher_border_color'
wp option delete 'wpgv_hide_expiry'
wp option delete 'wpgv_expiry_date_format'
wp option delete 'wpgv_demoimageurl'
wp option delete 'wpgv_quotes'
wp option delete 'wpgv_paypal_client_id'
wp option delete 'jal_db_version'
wp option delete 'wpgv_select_number_format'
wp option delete 'wpgv_paypal_secret_key'
wp option delete 'wpgv_add_extra_charges_voucher'
wp option delete 'wpgv_number_giftcard_slider'
wp option delete 'wpgv_multisafepay'
wp option delete 'wpgv_paypal_alternative_text'
wp option delete 'wpgv_multisafepay_alternative_text'
wp option delete 'wpgv_additional_charges_text_voucher'
wp option delete 'wpgv_template_mode_giftcard'
wp option delete 'wpgv_add_extra_charges_item'
wp option delete 'wpgv_hide_price_item'
wp option delete 'wpgv_stripe_webhook_key'
wp option delete 'wpgv_customer_receipt'
wp option delete 'wpgv_cancelpagemessage'
wp option delete 'wpgv_demoimageurl_voucher'
wp option delete 'wpgv_demoimageurl_item'
wp option delete 'wpgv_enable_pdf_saving'
wp option delete 'wpgv_invoice_mail_enable'
wp option delete 'wpgv_stripesuccesspage'
wp option delete 'wpgv_add_extra_charges'
wp option delete 'wpgv_item_hide_price'
wp option delete 'wpgv_stripe_ideal'
wp option delete 'wpgv_license_key'
wp option delete 'wpgv_license_status'

# Delete Transients
wp transient delete 'wpgv_activated'
wp transient delete 'wpgv_updated'

# Clear Cron Jobs
wp cron event delete 'send_gift_voucher_email_event'
wp cron event delete 'wpgv_check_voucher_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgv_total_payable_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgv_total_payable_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgv_total_payable_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgv_total_payable_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgv_stripe_session_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgv_stripe_session_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgv_stripe_session_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgv_stripe_session_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgv_stripe_mode_for_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgv_stripe_mode_for_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgv_stripe_mode_for_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgv_stripe_mode_for_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgv_paypal_payment_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgv_paypal_payment_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgv_paypal_payment_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgv_paypal_payment_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgv_paypal_mode_for_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgv_paypal_mode_for_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgv_paypal_mode_for_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgv_paypal_mode_for_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'style1_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'style1_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'style1_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'style1_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'special_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'special_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'special_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'special_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgv_customize_template_template-style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgv_customize_template_template-style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgv_customize_template_template-style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgv_customize_template_template-style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgv_customize_template_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgv_customize_template_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgv_customize_template_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgv_customize_template_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgv_customize_template_voucher_expiry_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgv_customize_template_voucher_expiry_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgv_customize_template_voucher_expiry_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgv_customize_template_voucher_expiry_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgv-voucher-category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgv-voucher-category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgv-voucher-category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgv-voucher-category-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'style2_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'style2_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'style2_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'style2_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'style3_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'style3_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'style3_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'style3_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpgv_customize_template_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpgv_customize_template_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpgv_customize_template_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpgv_customize_template_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgv_extra_charges'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgv_extra_charges'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgv_extra_charges'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgv_extra_charges'"

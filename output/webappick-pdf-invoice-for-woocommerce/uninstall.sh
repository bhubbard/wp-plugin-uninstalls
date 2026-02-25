#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpifw_bulk_type'
wp option delete 'wpifw_INVOICE_TITLE'
wp option delete 'wpifw_payment_method_text'
wp option delete 'wpifw_INVOICE_NUMBER_TEXT'
wp option delete 'wpifw_INVOICE_DATE_TEXT'
wp option delete 'wpifw_ORDER_NUMBER_TEXT'
wp option delete 'wpifw_ORDER_DATE_TEXT'
wp option delete 'wpifw_SL'
wp option delete 'wpifw_PRODUCT'
wp option delete 'wpifw_PRICE'
wp option delete 'wpifw_QUANTITY'
wp option delete 'wpifw_ROW_TOTAL'
wp option delete 'wpifw_SUBTOTAL_TEXT'
wp option delete 'wpifw_TAX_TEXT'
wp option delete 'wpifw_DISCOUNT_TEXT'
wp option delete 'wpifw_REFUNDED_TEXT'
wp option delete 'wpifw_SHIPPING_TEXT'
wp option delete 'wpifw_GRAND_TOTAL_TEXT'
wp option delete 'wpifw_DOWNLOAD_INVOICE_TEXT'
wp option delete 'wpifw_PACKING_SLIP_TEXT'
wp option delete 'wpifw_PACKING_SLIP_ORDER_NUMBER_TEXT'
wp option delete 'wpifw_PACKING_SLIP_ORDER_DATE_TEXT'
wp option delete 'wpifw_PACKING_SLIP_ORDER_METHOD_TEXT'
wp option delete 'wpifw_PACKING_SLIP_PRODUCT_TEXT'
wp option delete 'wpifw_PACKING_SLIP_WEIGHT_TEXT'
wp option delete 'wpifw_PACKING_SLIP_QUANTITY_TEXT'
wp option delete 'wpifw_logo_attachment_image_id'
wp option delete 'wpifw_logo_width'
wp option delete 'wpifw_block_title_from'
wp option delete 'wpifw_cname'
wp option delete 'wpifw_cdetails'
wp option delete 'wpifw_terms_and_condition'
wp option delete 'wpifw_other_information'
wp option delete 'wpifw_display_phone'
wp option delete 'wpifw_display_email'
wp option delete 'wpifw_invoicing'
wp option delete 'wpifw_download'
wp option delete 'wpifw_order_email'
wp option delete 'wpifw_output_type_html'
wp option delete 'wpifw_currency_code'
wp option delete 'wpifw_templateid'
wp option delete 'wpifw_invoice_paper_size'
wp option delete 'wpifw_invoice_no'
wp option delete 'wpifw_invoice_no_prefix'
wp option delete 'wpifw_invoice_no_suffix'
wp option delete 'wpifw_pdf_invoice_button_behaviour'
wp option delete 'wpifw_date_format'
wp option delete 'wpifw_payment_method_show'
wp option delete '_winvoice_order_meta_label'
wp option delete '_winvoice_order_meta_name'
wp option delete '_winvoice_order_meta_name_position'
wp option delete 'wpifw_invoice_product_title_length'
wp option delete 'wpifw_disid'
wp option delete '_winvoice_post_meta_label'
wp option delete '_winvoice_post_meta_name'
wp option delete 'wpifw_product_post_meta_show'
wp option delete '_winvoice_order_item_meta_label'
wp option delete '_winvoice_order_item_meta_name'
wp option delete 'wpifw_order_item_meta_show'
wp option delete 'wpifw_invoice_display_shipping_total'
wp option delete 'wpifw_show_order_note'
wp option delete 'wpifw_custom_css'
wp option delete 'wpifw_pdf_invoice_debug_mode'
wp option delete 'remove_invalid_characters_from_title'
wp option delete 'wpifw_logo_attachment_id'
wp option delete 'wpifw_invoice_download_check_list'
wp option delete 'wpifw_email_attach_check_list'
wp option delete 'challan_major_update'
wp option delete '_winvoice_order_meta_position'
wp option delete '_winvoice_order_meta_label_ps'
wp option delete '_winvoice_order_meta_name_ps'
wp option delete '_winvoice_order_meta_name_position_ps'
wp option delete '_winvoice_order_meta_position_ps'
wp option delete 'wpifw_delivery_address_buyer'
wp option delete 'wpifw_buyer'
wp option delete 'woo-invoice-activation-time'
wp option delete 'wpifw_buyer_shipping_address'
wp option delete 'wpifw_display_shipping_address'
wp option delete 'wpifw_hide_for_same_address'
wp option delete 'wpifw_delivery_address_block_title_to'
wp option delete 'wpifw_display_vat_id'
wp option delete 'wpifw_VAT_ID'
wp option delete 'wpifw_display_ssn'
wp option delete 'wpifw_SSN'
wp option delete 'woocommerce_currency_pos'
wp option delete 'wpifw_display_bank_account'
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'wpifw_logo_selector_attachment_id'
wp option delete 'wpifw_select_product_column'
wp option delete 'wpifw_custom_order_meta'
wp option delete 'wpifw_pdf_font_family'
wp option delete 'wpifw_enable_invoice_background'
wp option delete 'wpifw_invoice_background_opacity'
wp option delete 'wpifw_invoice_background_attachment_id'
wp option delete 'wpifw_enable_packingslip_background'
wp option delete 'wpifw_packingslip_background_opacity'
wp option delete 'wpifw_packingslip_background_attachment_id'
wp option delete 'wpifw_invoice_custom_paper_wide'
wp option delete 'wpifw_invoice_custom_paper_height'
wp option delete 'wpifw_pickingslip_custom_paper_wide'
wp option delete 'wpifw_pickingslip_custom_paper_height'
wp option delete 'wpifw_invoice_product_per_page'
wp option delete 'wpifw_packingslip_product_per_page'
wp option delete 'wpifw_invoice_font_size'
wp option delete 'wpifw_rtl'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wpifw_invoice_footer_font_size'
wp option delete 'challan_mpdf_lib_downloaded'
wp option delete 'challan_default_font_downloaded'
wp option delete 'woocommerce_default_country'
wp option delete 'woo_invoice_translation_notice_next_show_time'
wp option delete 'woo_invoice_review_notice_next_show_time'
wp option delete 'woo_invoice_free_saudi_zatca_notice'
wp option delete 'woo_invoice_free_gst_notice'
wp option delete 'review_test'
wp option delete 'woo_invoice_review_notice'
wp option delete 'challan_mpdf_all_font_downloading_done'
wp option delete 'challan_admin_ui_font_downloaded'
wp option delete 'challan_default_data_dat_downloaded'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cached_promos' OR option_name LIKE '_site_transient_%_cached_promos'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpifw_vat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpifw_vat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpifw_vat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpifw_vat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpifw_vat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpifw_vat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpifw_vat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpifw_vat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpifw_ssn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpifw_ssn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpifw_ssn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpifw_ssn_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpifw_ssn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpifw_ssn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpifw_ssn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpifw_ssn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_invoice_translation_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_invoice_translation_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_invoice_translation_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_invoice_translation_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_invoice_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_invoice_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_invoice_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_invoice_review_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_invoice_promotion_notice_dismissed_christmas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_invoice_promotion_notice_dismissed_christmas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_invoice_promotion_notice_dismissed_christmas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_invoice_promotion_notice_dismissed_christmas'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'puiw_dark_mode'
wp option delete 'puiw_template'
wp option delete 'puiw_preinvoice_template'
wp option delete 'puiw_color_swatches'
wp option delete 'puiw_date_format'
wp option delete 'puiw_store_name'
wp option delete 'puiw_invoice_title'
wp option delete 'puiw_store_logo'
wp option delete 'puiw_store_website'
wp option delete 'puiw_email_subject'
wp option delete 'puiw_email_from_name'
wp option delete 'puiw_email_from_address'
wp option delete 'puiw_store_email'
wp option delete 'puiw_store_phone'
wp option delete 'puiw_store_national_id'
wp option delete 'puiw_store_registration_number'
wp option delete 'puiw_store_economical_number'
wp option delete 'puiw_show_store_national_id'
wp option delete 'puiw_show_store_registration_number'
wp option delete 'puiw_show_store_economical_number'
wp option delete 'puiw_force_persian_numbers'
wp option delete 'puiw_store_address'
wp option delete 'puiw_store_postcode'
wp option delete 'puiw_send_invoices_via_email'
wp option delete 'puiw_send_invoices_via_email_opt'
wp option delete 'puiw_send_invoices_via_email_admin'
wp option delete 'puiw_send_invoices_via_email_opt_admin'
wp option delete 'puiw_send_invoices_via_email_shpmngrs'
wp option delete 'puiw_allow_users_use_invoices'
wp option delete 'puiw_allow_users_have_invoices'
wp option delete 'puiw_allow_guest_users_view_invoices'
wp option delete 'puiw_allow_users_use_invoices_criteria'
wp option delete 'puiw_show_barcode_id'
wp option delete 'puiw_postal_stickey_label_for_store'
wp option delete 'puiw_postal_stickey_label_for_customer'
wp option delete 'puiw_show_qr_code_id'
wp option delete 'puiw_postal_qr_code_label_for_store'
wp option delete 'puiw_postal_qr_code_label_for_customer'
wp option delete 'puiw_date_shamsi'
wp option delete 'puiw_show_shipped_date'
wp option delete 'puiw_show_shipping_serial'
wp option delete 'puiw_disable_wc_dashboard'
wp option delete 'puiw_allow_preorder_invoice'
wp option delete 'puiw_quick_shop'
wp option delete 'puiw_allow_preorder_emptycart'
wp option delete 'puiw_allow_pdf_customer'
wp option delete 'puiw_allow_pdf_guest'
wp option delete 'puiw_pdf_size'
wp option delete 'puiw_pdf_size_slip'
wp option delete 'puiw_pdf_orientation'
wp option delete 'puiw_attach_pdf_invoices_to_mail'
wp option delete 'puiw_custom_css_style'
wp option delete 'puiw_pdf_css_style'
wp option delete 'puiw_preorder_shopmngr_extra_note'
wp option delete 'puiw_preorder_customer_extra_note'
wp option delete 'puiw_inventory_css_style'
wp option delete 'puiw_theme_color'
wp option delete 'puiw_theme_color2'
wp option delete 'puiw_theme_color3'
wp option delete 'puiw_preinvoice_theme_color'
wp option delete 'puiw_preinvoice_theme_color2'
wp option delete 'puiw_preinvoice_theme_color3'
wp option delete 'puiw_font_size'
wp option delete 'puiw_invoice_prefix'
wp option delete 'puiw_pdf_font'
wp option delete 'puiw_pdf_margin_right'
wp option delete 'puiw_pdf_margin_left'
wp option delete 'puiw_pdf_margin_top'
wp option delete 'puiw_pdf_margin_bottom'
wp option delete 'puiw_pdf_margin_header'
wp option delete 'puiw_pdf_margin_footer'
wp option delete 'puiw_invoice_suffix'
wp option delete 'puiw_invoice_start'
wp option delete 'puiw_signature'
wp option delete 'puiw_show_signatures'
wp option delete 'puiw_watermark'
wp option delete 'puiw_watermark_opacity'
wp option delete 'puiw_watermark_blend'
wp option delete 'puiw_invoices_footer'
wp option delete 'puiw_shelf_number_id'
wp option delete 'puiw_show_product_sku_inventory'
wp option delete 'puiw_show_product_sku2_inventory'
wp option delete 'puiw_show_product_weight_in_inventory'
wp option delete 'puiw_show_product_total_weight_in_inventory'
wp option delete 'puiw_show_product_dimensions_in_inventory'
wp option delete 'puiw_show_discount_precent'
wp option delete 'puiw_show_product_tax'
wp option delete 'puiw_show_product_quantity_in_inventory'
wp option delete 'puiw_show_product_note_in_inventory'
wp option delete 'puiw_show_product_image_inventory'
wp option delete 'puiw_price_inventory_report'
wp option delete 'puiw_show_order_note_inventory'
wp option delete 'puiw_show_customer_address'
wp option delete 'puiw_show_customer_phone'
wp option delete 'puiw_show_customer_email'
wp option delete 'puiw_show_order_date'
wp option delete 'puiw_show_payment_method'
wp option delete 'puiw_show_shipping_method'
wp option delete 'puiw_show_shipping_address'
wp option delete 'puiw_address_display_method'
wp option delete 'puiw_transaction_ref_id'
wp option delete 'puiw_paid_date'
wp option delete 'puiw_order_status'
wp option delete 'puiw_purchase_complete_date'
wp option delete 'puiw_shipping_date'
wp option delete 'puiw_show_product_image'
wp option delete 'puiw_show_product_purchase_note'
wp option delete 'puiw_show_order_items'
wp option delete 'puiw_show_order_total'
wp option delete 'puiw_show_order_note'
wp option delete 'puiw_show_order_note_slip'
wp option delete 'puiw_show_user_uin'
wp option delete 'puiw_show_shipping_ref_id'
wp option delete 'puiw_show_price_template'
wp option delete 'puiw_show_tax_display'
wp option delete 'puiw_show_coupons_code_at_totals'
wp option delete 'puiw_show_coupons_description_at_totals'
wp option delete 'puiw_show_coupons_discount_at_totals'
wp option delete 'puiw_show_coupons_amount_at_totals'
wp option delete 'puiw_show_discount_calc'
wp option delete 'puiw_show_discount_display'
wp option delete 'puiw_show_product_weight'
wp option delete 'puiw_show_product_dimensions'
wp option delete 'puiw_show_product_sku'
wp option delete 'puiw_show_product_sku2'
wp option delete 'puiw_woosb_show_bundles'
wp option delete 'puiw_woosb_show_bundles_subtitle'
wp option delete 'puiw_woosb_show_bundled_products'
wp option delete 'puiw_woosb_show_bundled_subtitle'
wp option delete 'puiw_woosb_show_bundled_hierarchy'
wp option delete 'puiw_woosb_bundled_subtitle_prefix'
wp option delete 'puiw_woosb_bundles_subtitle_prefix'
wp option delete 'puiw_items_sorting'
wp option delete 'peprodev_ultimate_invoice_alert_viewed_yet'
wp option delete 'puiw_last_import_version'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_text_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_puiw_invoice_shipdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_puiw_invoice_shipdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_puiw_invoice_shipdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_puiw_invoice_shipdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_puiw_invoice_shipdatefa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_puiw_invoice_shipdatefa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_puiw_invoice_shipdatefa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_puiw_invoice_shipdatefa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shelf_number_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shelf_number_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shelf_number_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shelf_number_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_puiw_invoice_track_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_puiw_invoice_track_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_puiw_invoice_track_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_puiw_invoice_track_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_uin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_uin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_uin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_uin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'puiw_billing_uin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'puiw_billing_uin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'puiw_billing_uin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'puiw_billing_uin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_puiw_billing_uin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_puiw_billing_uin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_puiw_billing_uin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_puiw_billing_uin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"

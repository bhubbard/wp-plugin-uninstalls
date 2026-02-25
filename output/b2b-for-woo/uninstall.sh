#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'af_cmfw_created_user_role_from_our_plugin'
wp option delete 'ct_rbpaqp_mmq_min_qty_error_message'
wp option delete 'ct_rbpaqp_mmq_max_qty_error_message'
wp option delete 'ct_rbpaqp_mmq_min_qty_error_message_crt_pg'
wp option delete 'ct_rbpaqp_mmq_max_qty_error_message_crt_pg'
wp option delete 'ct_rbpaqp_excludes_rule'
wp option delete 'ct_rbpaqp_show_role_pricing_on_product_page'
wp option delete 'ct_rbpaqp_set_role_pricing_on_title'
wp option delete 'ct_rbpaqp_set_min_max_table_title'
wp option delete 'cloudtect_invoice_logo_url'
wp option delete 'cloudtect_invoice_email_subject'
wp option delete 'cloudtect_invoice_email_message'
wp option delete 'af_ips_template_field'
wp option delete 'af_ips_template_bg_color'
wp option delete 'af_ips_template_header_color'
wp option delete 'af_ips_template_header_text_color'
wp option delete 'af_ips_customer_data_back_color'
wp option delete 'af_ips_table_customer_info_font_color'
wp option delete 'af_ips_template_total_section_color'
wp option delete 'af_ips_total_section_font_color'
wp option delete 'af_ips_footer_back_color'
wp option delete 'af_ips_footer_font_color'
wp option delete 'ct_psbs_product_per_page_for_product_sales'
wp option delete 'ct_psbs_product_per_page_for_order_sales'
wp option delete 'af_ips_template_content_field'
wp option delete 'af_ips_company_logo'
wp option delete 'af_ips_show_product_picture'
wp option delete 'af_ips_show_product_sku'
wp option delete 'af_ips_show_short_description'
wp option delete 'af_ips_show_quantity'
wp option delete 'af_ips_show_regular_price'
wp option delete 'af_ips_show_onsale_price'
wp option delete 'af_ips_show_product_price'
wp option delete 'af_ips_show_product_total'
wp option delete 'af_ips_show_tax'
wp option delete 'af_ips_show_total_inc_tax'
wp option delete 'af_ips_show_line_total'
wp option delete 'af_ips_show_discount_percentage'
wp option delete 'af_ips_show_note'
wp option delete 'af_ips_show_footer'
wp option delete 'af_ips_company_details'
wp option delete 'af_customer_invice_details'
wp option delete 'af_ips_company_name'
wp option delete 'af_ips_company_details_chk_box'
wp option delete 'af_ips_invoice_note_text'
wp option delete 'af_ips_footer_content'
wp option delete 'af_ips_invoice_suffix_or_prefix'
wp option delete 'af_ips_template_logo_field'
wp option delete 'af_ips_cstm_ship_details'
wp option delete 'af_ips_show_credit_note_product_name'
wp option delete 'af_ips_show_credit_note_product_img'
wp option delete 'af_ips_show_credit_note_product_sku'
wp option delete 'af_ips_credit_notes_show_sub_total'
wp option delete 'af_ips_show_credit_notes'
wp option delete 'af_ips_show_credit_note_footer'
wp option delete 'af_crdit_comp_name'
wp option delete 'af_crdit_comp_detail'
wp option delete 'af_crdit_detail'
wp option delete 'af_ips_credit_notes_show_total_tax'
wp option delete 'af_ips_show_credit_note_notes'
wp option delete 'af_ips_show_credit_note_footer_text'
wp option delete 'af_ips_show_order_total'
wp option delete 'af_ips_show_packing_slip_show_footer'
wp option delete 'af_ips_show_packing_notes'
wp option delete 'af_slip_comp_name'
wp option delete 'af_slip_comp_detail'
wp option delete 'af_ips_show_packing_slip_notes'
wp option delete 'af_ips_text_packing_slip_footer'
wp option delete 'af_ips_invoice_prefix'
wp option delete 'af_ips_proforma_invoice_note_text'
wp option delete 'ct_enable_mail_on_line_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ct_additional_content%'"
wp option delete 'field_border_checkbox'
wp option delete 'field_title_border_position'
wp option delete 'title_display'
wp option delete 'heading_type'
wp option delete 'seperator_checkbox'
wp option delete 'field_seperator'
wp option delete 'title_font_size'
wp option delete 'title_color'
wp option delete 'title_bg'
wp option delete 'bg_color'
wp option delete 'bg_radius'
wp option delete 'bg_padding'
wp option delete 'option_title_font_size'
wp option delete 'optn_title_font_color'
wp option delete 'field_border_pixels'
wp option delete 'field_border_color'
wp option delete 'field_border_radius'
wp option delete 'field_inside_padding'
wp option delete 'field_title_position'
wp option delete 'desc_font_size'
wp option delete 'tool_tip_bg_color'
wp option delete 'tool_tip_text_color'
wp option delete 'tool_tip_font_size'
wp option delete 'ck_prod_optn_run_options'
wp option delete 'ck_prod_optns_run'
wp option delete 'ct_tepfw_accepted_request_email'
wp option delete 'ct_tepfw_rejected_request_email'
wp option delete 'ct_tepfw_accepted_request_email_content'
wp option delete 'ct_tepfw_rejected_request_email_content'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ct_rfq_enable_setting_for_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ct_rfq_email_subject_for_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ct_rfq_email_additional_content_for_%'"
wp option delete 'ct_rfq_hide_cart_sub_total'
wp option delete 'ct_rfq_hide_cart_tax'
wp option delete 'ct_rfq_hide_cart_total'
wp option delete 'ct_rfq_request_a_quote_billing_field_template'
wp option delete 'ct_rfq_request_a_quote_button_postion_prd_pg'
wp option delete 'ct_rfq_request_a_quote_page_type'
wp option delete 'ct_rfq_request_a_quote_page_id'
wp option delete 'ct_rfq_request_a_quote_btn_on_cart_page'
wp option delete 'ct_rfq_request_a_quote_checkboxes'
wp option delete 'ct_rfq_request_a_quote_whole_button_text'
wp option delete 'ct_rfq_place_quote_button_text'
wp option delete 'ct_rfq_add_to_quote_message'
wp option delete 'ct_rfq_quote_update_message'
wp option delete 'ct_rfq_quote_submit_message'
wp option delete 'ct_rfq_enable_redirect_from_shop_and_archive_page'
wp option delete 'ct_rfq_enable_redirect_from_product_page'
wp option delete 'ct_rfq_enable_redirect_from_quote_table_pg'
wp option delete 'ct_rfq_enable_redirect_from_cart_and_checkout_pge'
wp option delete 'ct_rfq_company_logos'
wp option delete 'ct_rfq_billing_logos'
wp option delete 'ct_rfq_shipping_logos'
wp option delete 'ct_rfq_mini_cart_logo'
wp option delete 'ct_rfq_enable_csv'
wp option delete 'ct_rfq_enable_pdf'
wp option delete 'ct_rfq_enable_company_name'
wp option delete 'ct_rfq_enable_select_template'
wp option delete 'ct_rfq_enable_term_and_conditions'
wp option delete 'ct_rfq_term_and_condition_data'
wp option delete 'ct_rfq_layout_background_color'
wp option delete 'ct_rfq_enable_company_address'
wp option delete 'ct_rfq_text_background_color'
wp option delete 'ct_rfq_allowed_pdf'
wp option delete 'ct_rfq_qts_show_categories'
wp option delete 'ct_rfq_qts_show_description'
wp option delete 'ct_rfq_qts_description_total_words'
wp option delete 'ct_rfq_qts_product_sku'
wp option delete 'ct_rfq_qts_show_out_of_stock_product_stock_status'
wp option delete 'ct_rfq_qts_product_stock_status'
wp option delete 'ct_rfq_qts_product_qty_box'
wp option delete 'ct_rfq_qts_show_out_of_stock_product'
wp option delete 'ct_tepfw_excludes_rule'
wp option delete 'woocommerce_email_from_address'
wp option delete 'ct_tepfw_pending_request_email'
wp option delete 'ct_tepfw_pending_request_email_content'
wp option delete 'ct_tepfw_text_field_label'
wp option delete 'ct_tepfw_textarea_field_label'
wp option delete 'ct_tepfw_fileupload_field_label'
wp option delete 'ct_tepfw_pendind_request_message'
wp option delete 'ct_tepfw_accepted_request_message'
wp option delete 'ct_tepfw_rejected_request_message'
wp option delete 'ct_tepfw_tax_exempt_position_on_checkout'
wp option delete 'ct_tepfw_enable_auto_tax_exempttion'
wp option delete 'ct_tepfw_enable_text_field'
wp option delete 'ct_tepfw_enable_textarea_field'
wp option delete 'ct_tepfw_enable_fileupload_field'
wp option delete 'ct_tepfw_allowed_file_types'
wp option delete 'devsoul_psbsp_auto_send_stats_on_mail_duration_number'
wp option delete 'devsoul_psbsp_auto_send_stats_on_mail_duration'
wp option delete 'devsoul_psbsp_auto_send_stats_on_mail_enable'
wp option delete 'devsoul_psbsp_auto_send_stats_on_mail_selected_countries'
wp option delete 'devsoul_psbsp_auto_send_stats_on_mail_order_status'
wp option delete 'ct_psbsp_product_per_page_for_product_sales'
wp option delete 'ct_psbsp_product_per_page_for_order_sales'
wp option delete 'devsoul_psbsp_email_csv_sales_by_product_enable'
wp option delete 'devsoul_psbsp_email_csv_sales_by_product_recipient'
wp option delete 'devsoul_psbsp_email_csv_sales_by_product_subject'
wp option delete 'devsoul_psbsp_email_csv_sales_by_product_additional_content'
wp option delete 'devsoul_psbsp_email_csv_sales_by_order_enable'
wp option delete 'devsoul_psbsp_email_csv_sales_by_order_recipient'
wp option delete 'devsoul_psbsp_email_csv_sales_by_order_subject'
wp option delete 'devsoul_psbsp_email_csv_sales_by_order_additional_content'
wp option delete 'devsoul_psbsp_product_per_page_for_product_sales'
wp option delete 'devsoul_psbsp_product_per_page_for_order_sales'
wp option delete 'devsoul_psbsp_stats_product_in_product_columns'
wp option delete 'devsoul_psbsp_show_total_sales_in_user_table'
wp option delete 'devsoul_psbsp_order_status_field'
wp option delete 'devsoul_psbsp_apply_costs_on_a_selected_order_field'
wp option delete 'devsoul_psbsp_apply_costs_on_all_orders_field'

# Clear Cron Jobs
wp cron event delete 'devsoul_psbsp_send_email_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'af_hspm_review_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'af_hspm_review_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'af_hspm_review_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'af_hspm_review_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'af_hspm_category_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'af_hspm_category_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'af_hspm_category_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'af_hspm_category_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_hsp_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_hsp_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_hsp_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_hsp_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cthspm_country_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cthspm_country_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cthspm_country_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cthspm_country_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'af_hspm_user_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'af_hspm_user_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'af_hspm_user_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'af_hspm_user_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_cart_minmum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_cart_minmum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_cart_minmum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_cart_minmum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_cart_maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_cart_maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_cart_maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_cart_maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_q_t'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_q_t'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_q_t'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_q_t'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_restrict_cart_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_restrict_cart_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_restrict_cart_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_restrict_cart_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_payment_or_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_payment_or_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_payment_or_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_payment_or_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cthspm_payment_method_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cthspm_payment_method_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cthspm_payment_method_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cthspm_payment_method_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cthspm_shipping_methods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cthspm_shipping_methods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cthspm_shipping_methods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cthspm_shipping_methods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_restriction_cart_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_restriction_cart_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_restriction_cart_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_restriction_cart_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_role_base_pricing_selected_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_role_base_pricing_selected_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_role_base_pricing_selected_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_role_base_pricing_selected_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_role_base_pricing_selected_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_role_base_pricing_selected_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_role_base_pricing_selected_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_role_base_pricing_selected_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_role_base_pricing_discount_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_role_base_pricing_discount_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_role_base_pricing_discount_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_role_base_pricing_discount_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_role_base_pricing_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_role_base_pricing_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_role_base_pricing_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_role_base_pricing_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_role_base_pricing_discount_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_role_base_pricing_discount_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_role_base_pricing_discount_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_role_base_pricing_discount_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_role_base_pricing_discount_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_role_base_pricing_discount_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_role_base_pricing_discount_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_role_base_pricing_discount_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_role_base_pricing_discount_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_role_base_pricing_discount_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_role_base_pricing_discount_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_role_base_pricing_discount_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_role_base_pricing_discount_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_role_base_pricing_discount_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_role_base_pricing_discount_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_role_base_pricing_discount_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_role_base_pricing_discount_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_role_base_pricing_discount_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_role_base_pricing_discount_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_role_base_pricing_discount_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_inlcuded_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_price_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_price_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_price_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_price_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_price_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_price_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_price_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_price_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_add_to_cart_btn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_add_to_cart_btn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_add_to_cart_btn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_add_to_cart_btn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_make_your_on_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_make_your_on_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_make_your_on_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_make_your_on_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_custom_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_custom_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_custom_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_custom_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_inlcuded_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product_base_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product_base_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product_base_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product_base_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product_on_min_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product_on_min_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product_on_min_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpav_hide_product_on_min_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_add_purchas_item_qty_or_not'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_add_purchas_item_qty_or_not'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_add_purchas_item_qty_or_not'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_add_purchas_item_qty_or_not'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_order_status_purchas_item_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_order_status_purchas_item_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_order_status_purchas_item_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_order_status_purchas_item_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_inlcuded_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'role_base_price_product_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'role_base_price_product_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'role_base_price_product_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'role_base_price_product_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_restriction_product_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_restriction_product_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_restriction_product_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_restriction_product_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_rbp_inlcuded_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_restriction_product_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_restriction_product_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_restriction_product_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_restriction_product_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product_base_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product_base_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product_base_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product_base_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product_on_min_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product_on_min_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product_on_min_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_hpaatcb_hide_product_on_min_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_mmq_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_mmq_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_mmq_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_mmq_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_rbp_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_rbp_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_rbp_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_rbp_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rbpaqp_rbp_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rbpaqp_rbp_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rbpaqp_rbp_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rbpaqp_rbp_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_fee_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_fee_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_fee_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_fee_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_fee_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_fee_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_fee_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_fee_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_enable_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_enable_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_enable_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_enable_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_enable_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_enable_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_enable_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_enable_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_shipping_zone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_shipping_zone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_shipping_zone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_shipping_zone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_countries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_states'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_states'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_states'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_states'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_zip_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_zip_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_zip_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_zip_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_cities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_cities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_cities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_cities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_cart_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_cart_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_cart_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_cart_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_cart_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_cart_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_cart_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_cart_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_cart_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_cart_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_cart_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_cart_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_cart_products_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_cart_products_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_cart_products_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_cart_products_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_cart_products_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_cart_products_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_cart_products_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_cart_products_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_shipping_classes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_shipping_classes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_shipping_classes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_shipping_classes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_customer_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_customer_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_customer_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_customer_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudtech_wipo_customer_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudtech_wipo_customer_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudtech_wipo_customer_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudtech_wipo_customer_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_options_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_options_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_options_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_options_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_option_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_option_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_option_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_option_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_option_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_option_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_option_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_option_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_option_price_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_option_price_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_option_price_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_option_price_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_option_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_option_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_option_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_option_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_option_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_option_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_option_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_option_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_fields_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_fields_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_fields_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_fields_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_add_tool_tip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_add_tool_tip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_add_tool_tip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_add_tool_tip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_tool_tip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_tool_tip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_tool_tip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_tool_tip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_add_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_add_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_add_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_add_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_decs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_decs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_decs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_decs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_req_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_req_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_req_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_req_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_limit_range'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_limit_range'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_limit_range'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_limit_range'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_min_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_min_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_min_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_min_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_max_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_max_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_max_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_max_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_price_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_price_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_price_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_price_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_pricing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_pricing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_pricing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_pricing_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_file_extention'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_file_extention'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_file_extention'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_file_extention'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_field_dependable_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_field_dependable_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_field_dependable_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_field_dependable_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_fields_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_fields_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_fields_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_fields_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_options_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_options_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_options_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_options_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'af_addon_heading_type_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'af_addon_heading_type_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'af_addon_heading_type_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'af_addon_heading_type_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prd_opt_prd_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prd_opt_prd_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prd_opt_prd_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prd_opt_prd_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prd_opt_cat_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prd_opt_cat_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prd_opt_cat_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prd_opt_cat_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prd_opt_tag_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prd_opt_tag_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prd_opt_tag_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prd_opt_tag_search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'all_prod_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'all_prod_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'all_prod_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'all_prod_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_inlcuded_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_inlcuded_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_inlcuded_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_inlcuded_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_inlcuded_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_inlcuded_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_inlcuded_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_inlcuded_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_inlcuded_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_inlcuded_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_inlcuded_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_inlcuded_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_inlcuded_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_inlcuded_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_inlcuded_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_inlcuded_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_inlcuded_customers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_inlcuded_customers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_inlcuded_customers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_inlcuded_customers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_inlcuded_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_inlcuded_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_inlcuded_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_inlcuded_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_hide_add_to_cart_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_hide_add_to_cart_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_hide_add_to_cart_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_hide_add_to_cart_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_show_request_a_quote_btn_with_outofstock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_show_request_a_quote_btn_with_outofstock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_show_request_a_quote_btn_with_outofstock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_show_request_a_quote_btn_with_outofstock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_request_a_quote_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_request_a_quote_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_request_a_quote_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_request_a_quote_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_request_a_quote_button_additonal_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_request_a_quote_button_additonal_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_request_a_quote_button_additonal_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_request_a_quote_button_additonal_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_can_user_add_custom_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_can_user_add_custom_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_can_user_add_custom_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_can_user_add_custom_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_hide_price_or_replace_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_hide_price_or_replace_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_hide_price_or_replace_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_hide_price_or_replace_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_replace_price_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_replace_price_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_replace_price_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_replace_price_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_enable_atq_btn_on_crt_pg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_enable_atq_btn_on_crt_pg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_enable_atq_btn_on_crt_pg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_enable_atq_btn_on_crt_pg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_quote_fields_show_field_with'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_quote_fields_show_field_with'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_quote_fields_show_field_with'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_quote_fields_show_field_with'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_quote_fields_show_field_in_private_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_quote_fields_show_field_in_private_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_quote_fields_show_field_in_private_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_quote_fields_show_field_in_private_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_quote_fields_is_this_dependent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_quote_fields_is_this_dependent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_quote_fields_is_this_dependent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_quote_fields_is_this_dependent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_quote_fields_field_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_quote_fields_field_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_quote_fields_field_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_quote_fields_field_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_quote_fields_select_dependent_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_quote_fields_select_dependent_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_quote_fields_select_dependent_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_quote_fields_select_dependent_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_request_a_quote_options_value_and_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_request_a_quote_options_value_and_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_request_a_quote_options_value_and_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_request_a_quote_options_value_and_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_quote_fields_field_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_quote_fields_field_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_quote_fields_field_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_quote_fields_field_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_quote_fields_field_default_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_quote_fields_field_default_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_quote_fields_field_default_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_quote_fields_field_default_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_quote_fields_field_placeholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_quote_fields_field_placeholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_quote_fields_field_placeholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_quote_fields_field_placeholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_rfq_quote_fields_field_additonal_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_rfq_quote_fields_field_additonal_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_rfq_quote_fields_field_additonal_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_rfq_quote_fields_field_additonal_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloud_tech_quote_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloud_tech_quote_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloud_tech_quote_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloud_tech_quote_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloud_tech_quote_billing_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloud_tech_quote_billing_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloud_tech_quote_billing_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloud_tech_quote_billing_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'current_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'current_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'current_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'current_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloud_tech_request_a_quote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloud_tech_request_a_quote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloud_tech_request_a_quote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloud_tech_request_a_quote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing-profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing-profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing-profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing-profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping-profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping-profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping-profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping-profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_inlcuded_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_inlcuded_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_inlcuded_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_inlcuded_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_inlcuded_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_inlcuded_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_inlcuded_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_inlcuded_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_inlcuded_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_inlcuded_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_inlcuded_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_inlcuded_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_inlcuded_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_inlcuded_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_inlcuded_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_inlcuded_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_inlcuded_customers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_inlcuded_customers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_inlcuded_customers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_inlcuded_customers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_inlcuded_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_inlcuded_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_inlcuded_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_inlcuded_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_remove_tax_automatically'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_remove_tax_automatically'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_remove_tax_automatically'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_remove_tax_automatically'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_auto_approve_tax_exempt_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_auto_approve_tax_exempt_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_auto_approve_tax_exempt_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_auto_approve_tax_exempt_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_show_default_or_custom_msg_with_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_show_default_or_custom_msg_with_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_show_default_or_custom_msg_with_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_show_default_or_custom_msg_with_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_custom_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_custom_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_custom_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_custom_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_remove_tax_exempt_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_remove_tax_exempt_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_remove_tax_exempt_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_remove_tax_exempt_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_is_tax_exempted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_is_tax_exempted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_is_tax_exempted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_is_tax_exempted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_enable_resubmit_for_request_again'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_enable_resubmit_for_request_again'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_enable_resubmit_for_request_again'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_enable_resubmit_for_request_again'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_text_field_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_text_field_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_text_field_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_text_field_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_textarea_field_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_textarea_field_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_textarea_field_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_textarea_field_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_fileupload_field_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_fileupload_field_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_fileupload_field_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_fileupload_field_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_tepfw_additional_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_tepfw_additional_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_tepfw_additional_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_tepfw_additional_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'already_exported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'already_exported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'already_exported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'already_exported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'devsoul_psbsp_plugin_is_activate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'devsoul_psbsp_plugin_is_activate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'devsoul_psbsp_plugin_is_activate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'devsoul_psbsp_plugin_is_activate'"

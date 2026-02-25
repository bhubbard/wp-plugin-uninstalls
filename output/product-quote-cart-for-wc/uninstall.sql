-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmpqcw_field_customizer_enble', 'gmpqcw_field_customizer_required', 'gmpqcw_field_customizer_field', 'gmpqcw_field_customizer_type', 'gmpqcw_field_customizer_order', 'gmpqcw_field_customizer_option', 'gmpqcw_email_body', 'gmpqcw_email_sucesemsg', 'gmpqcw_send_enquiry_email_cutomer', 'gmpqcw_reci_email', 'gmpqcw_email_sub', 'gmpqcw_customer_email_subject', 'gmpqcw_cart_enable_setting', 'gmpqcw_cart_button_label', 'gmpqcw_cart_display', 'gmpqcw_cart_page', 'gmpqcw_include_exclude', 'gmpqcw_include_category', 'gmpqcw_exclude_category', 'gmpqcw_content_beforeform', 'gmpqcw_content_afterform', 'gmpqcw_usershow', 'gmpqcw_hide_add_to_cart', 'gmpqcw_label_show', 'gmpqcw_remove_price', 'gmpqcw_show_product_outofstock', 'gmpqcw_enquiry_btn_bg_color', 'gmpqcw_enquiry_btn_text_color', 'gmpqcw_enquiry_btn_bg_hover_color', 'gmpqcw_enquiry_btn_text_hover_color', 'gmpqcw_redirect_form_sub', 'gmpqcw_redirect_form_sub_page', 'gmpqcw_disable_cart_checkout_page', 'gmpqcw_redirect_disable_cart_checkout_page', 'gmpqcw_button_label', 'gmpqcw_form_title', 'gmpqcw_form_required');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_gmpqcw');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_gmpqcw');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_gmpqcw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_gmpqcw');


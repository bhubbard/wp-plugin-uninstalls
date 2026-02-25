#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmpqcw_field_customizer_enble'
wp option delete 'gmpqcw_field_customizer_required'
wp option delete 'gmpqcw_field_customizer_field'
wp option delete 'gmpqcw_field_customizer_type'
wp option delete 'gmpqcw_field_customizer_order'
wp option delete 'gmpqcw_field_customizer_option'
wp option delete 'gmpqcw_email_body'
wp option delete 'gmpqcw_email_sucesemsg'
wp option delete 'gmpqcw_send_enquiry_email_cutomer'
wp option delete 'gmpqcw_reci_email'
wp option delete 'gmpqcw_email_sub'
wp option delete 'gmpqcw_customer_email_subject'
wp option delete 'gmpqcw_cart_enable_setting'
wp option delete 'gmpqcw_cart_button_label'
wp option delete 'gmpqcw_cart_display'
wp option delete 'gmpqcw_cart_page'
wp option delete 'gmpqcw_include_exclude'
wp option delete 'gmpqcw_include_category'
wp option delete 'gmpqcw_exclude_category'
wp option delete 'gmpqcw_content_beforeform'
wp option delete 'gmpqcw_content_afterform'
wp option delete 'gmpqcw_usershow'
wp option delete 'gmpqcw_hide_add_to_cart'
wp option delete 'gmpqcw_label_show'
wp option delete 'gmpqcw_remove_price'
wp option delete 'gmpqcw_show_product_outofstock'
wp option delete 'gmpqcw_enquiry_btn_bg_color'
wp option delete 'gmpqcw_enquiry_btn_text_color'
wp option delete 'gmpqcw_enquiry_btn_bg_hover_color'
wp option delete 'gmpqcw_enquiry_btn_text_hover_color'
wp option delete 'gmpqcw_redirect_form_sub'
wp option delete 'gmpqcw_redirect_form_sub_page'
wp option delete 'gmpqcw_disable_cart_checkout_page'
wp option delete 'gmpqcw_redirect_disable_cart_checkout_page'
wp option delete 'gmpqcw_button_label'
wp option delete 'gmpqcw_form_title'
wp option delete 'gmpqcw_form_required'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_gmpqcw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_gmpqcw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_gmpqcw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_gmpqcw'"

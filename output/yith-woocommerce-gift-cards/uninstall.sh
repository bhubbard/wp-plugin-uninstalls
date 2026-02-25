#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ywgc_plugin_date_format_option'
wp option delete 'ywgc_allow_shop_manager'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'ywgc_permit_free_amount'
wp option delete 'ywgc_code_pattern'
wp option delete '_wcml_settings'
wp option delete 'ywgc_recipient_mandatory'
wp option delete 'ywgc_gift_card_header_url'
wp option delete 'ywgc_shop_logo_on_gift_card'
wp option delete 'ywgc_shop_logo_url'
wp option delete 'ywgc_minimal_car_total'
wp option delete 'ywgc_apply_gift_card_on_coupon_form'
wp option delete 'ywgc_apply_gc_code_on_gc_product'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'ywgc_auto_discount_button_activation'
wp option delete 'ywgc_shop_name'
wp option delete 'ywgc_physical_details_mandatory'
wp option delete 'ywgc_plugin_main_color'
wp option delete 'ywgc_apply_gift_cards_button_colors'
wp option delete 'ywgc_apply_gift_cards_colors'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"
wp option delete 'ywgc_display_form'
wp option delete 'ywgc_icon_text_before_gc_form'
wp option delete 'ywgc_text_before_gc_form'
wp option delete 'ywgc_link_text_before_gc_form'
wp option delete 'ywgc_minimal_cart_total_option'
wp option delete 'ywgc_minimal_cart_total_value'
wp option delete 'ywgc_text_in_the_form'
wp option delete 'ywgc_apply_gift_card_button_text'
wp option delete 'ywgc_email_button_label'
wp option delete 'ywgc_select_amount_title'
wp option delete 'ywgc_ask_sender_name'
wp option delete 'ywgc_template_design_number_to_show'
wp option delete 'ywgc_template_design'
wp option delete 'ywgc_choose_design_title'

# Delete Transients
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_order_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_order_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_order_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_order_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected_images_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected_images_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected_images_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected_images_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_created_via'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'generated_in_bulk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'generated_in_bulk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'generated_in_bulk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'generated_in_bulk'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_delivery_date_formatted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_delivery_date_formatted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_delivery_date_formatted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_delivery_date_formatted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_wcmcs_custom_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_wcmcs_custom_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_wcmcs_custom_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_wcmcs_custom_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_recipient_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_recipient_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_recipient_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_recipient_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_recipient'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_recipient'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_recipient'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_recipient'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_sender_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_sender_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_sender_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_sender_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_balance_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_balance_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_balance_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_balance_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_amount_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_amount_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_amount_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_amount_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_postdated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_postdated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_postdated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_postdated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_is_digital'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_is_digital'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_is_digital'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_is_digital'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_delivery_send_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_delivery_send_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_delivery_send_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_delivery_send_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_internal_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_internal_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_internal_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_internal_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ywgc_pdf_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ywgc_pdf_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ywgc_pdf_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ywgc_pdf_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_sale_discount_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_sale_discount_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_sale_discount_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_sale_discount_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_sale_discount_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_sale_discount_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_sale_discount_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_sale_discount_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gift_card_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gift_card_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gift_card_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gift_card_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_amount_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_amount_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_amount_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_amount_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_amount_balance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_amount_balance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_amount_balance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_amount_balance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_amount_balance_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_amount_balance_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_amount_balance_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_amount_balance_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ywgc_redemption_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ywgc_redemption_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ywgc_redemption_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ywgc_redemption_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywgc_expiration_date_formatted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywgc_expiration_date_formatted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywgc_expiration_date_formatted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywgc_expiration_date_formatted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"

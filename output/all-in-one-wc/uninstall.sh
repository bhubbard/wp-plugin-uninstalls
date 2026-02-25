#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general_font_family'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general_font_family_fallback'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_create_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_numbering_counter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_numbering_template'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_format_custom_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_format_custom_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_orientation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_margin_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_margin_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_margin_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_thankyou_page_template'"
wp option delete 'aiow_download_tcpdf_fonts_hook_timestamp'
wp option delete 'aiow_invoicing_fonts_version'
wp option delete 'aiow_invoicing_fonts_version_timestamp'
wp option delete 'aiow_call_for_price_make_all_empty'
wp option delete 'aiow_shipping_left_to_free_info_position_cart'
wp option delete 'aiow_shipping_left_to_free_info_priority_cart'
wp option delete 'aiow_shipping_left_to_free_info_position_mini_cart'
wp option delete 'aiow_shipping_left_to_free_info_priority_mini_cart'
wp option delete 'aiow_shipping_left_to_free_info_position_checkout'
wp option delete 'aiow_shipping_left_to_free_info_priority_checkout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aiow_shipping_by_order_amount_min_instance_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aiow_shipping_by_order_amount_max_instance_%'"
wp option delete 'aiow_order_minimum_amount_cart_notice_type'
wp option delete 'aiow_order_number_counter_previous_order_date'
wp option delete 'aiow_order_number_counter'
wp option delete 'aiow_order_bulk_regenerate_download_permissions_all_orders'

# Clear Cron Jobs
wp cron event delete 'aiow_version_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiow_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiow_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiow_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiow_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiow_order_quantities_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiow_order_quantities_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiow_order_quantities_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiow_order_quantities_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"

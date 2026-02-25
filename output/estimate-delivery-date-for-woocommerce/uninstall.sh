#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pi_edd_do_activation_redirect'
wp option delete 'pi_edd_holidays'
wp option delete 'pi_defaul_shipping_zone'
wp option delete 'pi_edd_translate_message'
wp option delete 'pi_edd_use_default_preparation_days'
wp option delete 'pi_general_date_format'
wp option delete 'pi_edd_min_max'
wp option delete 'pi_show_single_estimate_by_ajax'
wp option delete 'pi_product_page_position'
wp option delete 'pi_loop_page_position'
wp option delete 'pi_general_range'
wp option delete 'pi_show_product_loop_page'
wp option delete 'pi_show_cart_page'
wp option delete 'pi_show_checkout_page'
wp option delete 'pi_edd_cart_page_show_single_estimate'
wp option delete 'pi_edd_show_overall_estimate_in_email'
wp option delete 'pi_edd_show_overall_estimate_in_order_success_page'
wp option delete 'pi_edd_enable_estimate'
wp option delete 'pi_shipping_breakup_time'
wp option delete 'pi_edd_min_preparation_days'
wp option delete 'pi_product_padding'
wp option delete 'pi_loop_padding'
wp option delete 'pi_cart_padding'
wp option delete 'pi_product_estimate_font_size'
wp option delete 'pi_loop_estimate_font_size'
wp option delete 'pi_cart_estimate_font_size'
wp option delete 'pi_product_border'
wp option delete 'pi_loop_border'
wp option delete 'pi_cart_border'
wp option delete 'pi_product_border_radius'
wp option delete 'pi_loop_border_radius'
wp option delete 'pi_cart_border_radius'
wp option delete 'pi_product_bg_color'
wp option delete 'pi_product_text_color'
wp option delete 'pi_product_text_align'
wp option delete 'pi_loop_bg_color'
wp option delete 'pi_loop_text_color'
wp option delete 'pi_loop_text_align'
wp option delete 'pi_cart_bg_color'
wp option delete 'pi_cart_text_color'
wp option delete 'pi_cart_text_align'
wp option delete 'pi_edd_default_min_shipping_days'
wp option delete 'pi_edd_default_max_shipping_days'
wp option delete 'pi_show_product_page'
wp option delete 'pi_product_page_text'
wp option delete 'pi_product_page_text_range'
wp option delete 'pi_loop_page_text'
wp option delete 'pi_loop_page_text_range'
wp option delete 'pi_cart_page_text'
wp option delete 'pi_cart_page_text_range'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_preparation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_preparation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_preparation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_preparation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pisol_edd_use_variation_preparation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pisol_edd_use_variation_preparation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pisol_edd_use_variation_preparation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pisol_edd_use_variation_preparation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pisol_preparation_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pisol_preparation_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pisol_preparation_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pisol_preparation_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'min_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'min_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'min_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'min_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_days'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fbtwoo_position'
wp option delete 'fbtwoo_title'
wp option delete 'fbtwoo_button_text_no_product'
wp option delete 'fbtwoo_button_text_one_product'
wp option delete 'fbtwoo_button_text_two_product'
wp option delete 'fbtwoo_button_text_three_product'
wp option delete 'fbtwoo_button_color'
wp option delete 'fbtwoo_button_color_hover'
wp option delete 'fbtwoo_button_text_color'
wp option delete 'fbtwoo_button_text_color_hover'
wp option delete 'fbtwoo_save_text_color'
wp option delete 'fbtwoo_total_text'
wp option delete 'fbtwoo_uninstall_remove_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fbtwoo_apply_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fbtwoo_apply_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fbtwoo_apply_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fbtwoo_apply_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fbtwoo_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fbtwoo_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fbtwoo_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fbtwoo_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fbtwoo_discount_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fbtwoo_discount_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fbtwoo_discount_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fbtwoo_discount_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fbtwoo_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fbtwoo_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fbtwoo_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fbtwoo_product_ids'"

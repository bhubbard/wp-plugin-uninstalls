#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tppdil_disable_description_in_loop'
wp option delete 'tppdil_disable_description_in_mobile'
wp option delete 'tppdil_description_priority'
wp option delete 'tppdil_description_position'
wp option delete 'tppdil_limit_description'
wp option delete 'tppdil_limit_description_len'
wp option delete 'tppdil_exclude_description_from_categories'
wp option delete 'tppdil_exclude_description_from_tags'
wp option delete 'tppdil_exclude_description_from_related'
wp option delete 'tppdil_exclude_description_from_up_sells'
wp option delete 'tppdil_exclude_description_from_shop'
wp option delete 'tppdil_show_product_description'
wp option delete 'tppdil_show_product_short_description'
wp option delete 'tppdil_description_background'
wp option delete 'tppdil_description_color'
wp option delete 'tppdil_description_font_size'
wp option delete 'tppdil_description_text_align'
wp option delete 'tppdil_description_font_weight'
wp option delete 'tppdil_tooltip_background'
wp option delete 'tppdil_tooltip_color'
wp option delete 'tppdil_tooltip_position'
wp option delete 'tppdil_custom_css'
wp option delete 'tppdil_description_margin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tppdil_single_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tppdil_single_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tppdil_single_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tppdil_single_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tppdil_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tppdil_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tppdil_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tppdil_description'"

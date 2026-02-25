#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mirrar_brand_id'
wp option delete 'mirrar_all_post_type'
wp option delete 'mirrar_button_position'
wp option delete 'mirrar_btn_product_class'
wp option delete 'mirrar_hover_color'
wp option delete 'mirrar_button_icon'
wp option delete 'mirrar_icon_position'
wp option delete 'mirrar_style'
wp option delete 'mirrar_button_text'
wp option delete 'mirrar_button_alignment'
wp option delete 'mirrar_shop'
wp option delete 'mirrar_single_product'
wp option delete 'mirrar_btn_product_css'
wp option delete 'mirrar_all_taxonomy'
wp option delete 'mirrar_btn_category_class'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mirrar_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mirrar_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mirrar_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mirrar_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mirrar_brand_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mirrar_brand_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mirrar_brand_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mirrar_brand_id'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'menu_master_show_fields'
wp option delete 'menu_master_filter_options'
wp option delete 'menu_master_menu_order'
wp option delete 'menu_master_custom_category_order'
wp option delete 'menu_master_title_font_color'
wp option delete 'menu_master_title_font_size'
wp option delete 'menu_master_title_font_weight'
wp option delete 'menu_master_description_font_color'
wp option delete 'menu_master_description_font_size'
wp option delete 'menu_master_description_font_weight'
wp option delete 'menu_master_price_font_color'
wp option delete 'menu_master_price_font_size'
wp option delete 'menu_master_price_font_weight'
wp option delete 'menu_master_default_menu_image'
wp option delete 'menu_master_veg_nonveg_icons'
wp option delete 'menu_master_elementor_page_id'
wp option delete 'menu_master_gutenberg_page_id'
wp option delete 'menu_master_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmrm_ai_botkit_banner_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmrm_ai_botkit_banner_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmrm_ai_botkit_banner_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmrm_ai_botkit_banner_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pisol_rm_enable_caching'
wp option delete 'pisol_rm_category_button_bg_color'
wp option delete 'pisol_rm_category_button_text_color'
wp option delete 'pisol_rm_active_category_button_bg_color'
wp option delete 'pisol_rm_active_category_button_text_color'
wp option delete 'pisol_rm_sub_category_button_bg_color'
wp option delete 'pisol_rm_sub_category_button_text_color'
wp option delete 'pisol_rm_add_to_cart_button_bg_color'
wp option delete 'pisol_rm_hide_cart_show_cart_bg_color'
wp option delete 'pisol_rm_hide_cart_show_cart_text_color'
wp option delete 'pisol_rm_checkout_bg_color'
wp option delete 'pisol_rm_checkout_text_color'
wp option delete 'pisol_rm_search_button_bg_color'
wp option delete 'pisol_rm_search_button_text_color'
wp option delete 'pisol_rm_side_dish_group_bg_color'
wp option delete 'pisol_rm_side_dish_group_text_color'
wp option delete 'pisol_rm_restricted_side_dish_group_bg_color'
wp option delete 'pisol_rm_restricted_side_dish_group_text_color'
wp option delete 'pisol_rm_selected_side_dish_bg_color'
wp option delete 'pisol_rm_selected_side_dish_text_color'
wp option delete 'pisol_rm_non_selected_side_dish_bg_color'
wp option delete 'pisol_rm_non_selected_side_dish_text_color'
wp option delete 'pisol_rm_add_custom_color'
wp option delete 'woocommerce_currency_pos'
wp option delete 'pisol_default_cat'
wp option delete 'pisol_rm_clear_selection'
wp option delete 'pisol_rm_browser_caching'
wp option delete 'pisol_rm_enable_search'
wp option delete 'pisol_rm_show_product_image_on_mobile'
wp option delete 'pisol_rest_layout'
wp option delete 'pisol_rm_show_food_type'
wp option delete 'pisol_rm_customize_button'
wp option delete 'pisol_rest_animation'
wp option delete 'pisol_rm_customize_button_label'
wp option delete 'pisol_hide_empty_cat'
wp option delete 'pisol_rm_veg_icon'
wp option delete 'pisol_rm_gluten_free_icon'
wp option delete 'pisol_rm_contain_nuts_icon'
wp option delete 'pisol_rm_hot_icon'
wp option delete 'pisol_rm_vegan_icon'
wp option delete 'pisol_rm_nonveg_icon'
wp option delete 'pisol_rm_enable_image_popup'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'pisol_rm_cache_expiry'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'pi_dcw_quick_view_light_box'
wp option delete 'pi_dcw_quick_view_modal_open_animation'
wp option delete 'woocommerce_enable_lightbox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pisol_sidedishes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pisol_sidedishes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pisol_sidedishes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pisol_sidedishes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pisol_dish_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pisol_dish_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pisol_dish_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pisol_dish_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"

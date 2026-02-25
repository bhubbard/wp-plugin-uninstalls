#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wowrestro_notification_length'
wp option delete '_wowrestro_enable_notification'
wp option delete '_wowrestro_notification_sound_loop'
wp option delete 'wowrestro_licenses_setting'
wp option delete '_wowrestro_sales_type'
wp option delete 'wwro_last_order_id'
wp option delete '_wowrestro_notification_description'
wp option delete '_wowrestro_notification_title'
wp option delete '_wowrestro_notification_icon'
wp option delete '_wowrestro_notification_sound'
wp option delete '_wowrestro_default_selected_service'
wp option delete '_wowrestro_include_veg_non_veg'
wp option delete '_wowrestro_asap_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time_interval'"
wp option delete '_wowrestro_overwite_shop_page'
wp option delete '_wowrestro_adv_keep_other_product_types'
wp option delete '_wowrestro_enable_lazy_loading'
wp option delete '_wowrestro_service_modal_option'
wp option delete '_wowrestro_store_closed_message'
wp option delete '_wowrestro_primary_color_scheme'
wp option delete '_wowrestro_secondary_color_scheme'
wp option delete '_wowrestro_user_stylesheet'
wp option delete '_wowrestro_min_delivery_order_amount'
wp option delete '_wowrestro_min_delivery_order_amount_error'
wp option delete '_wowrestro_max_delivery_order_amount'
wp option delete '_wowrestro_max_delivery_order_amount_error'
wp option delete '_wowrestro_min_pickup_order_amount'
wp option delete '_wowrestro_min_pickup_order_amount_error'
wp option delete '_wowrestro_max_pickup_order_amount'
wp option delete '_wowrestro_max_pickup_order_amount_error'
wp option delete 'active_sitewide_plugins'
wp option delete '_wowrestro_later_text'
wp option delete '_wowrestro_enable_asap'
wp option delete '_wowrestro_adv_remove_data_on_uninstall'
wp option delete '_wowrestro_exclude_categories'
wp option delete '_wowrestro_open_time'
wp option delete '_wowrestro_close_time'
wp option delete '_wowrestro_food_prepation_time'
wp option delete 'pickup_time_interval'
wp option delete 'delivery_time_interval'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'enable_delivery'
wp option delete 'enable_pickup'
wp option delete '_wowrestro_pickup_label'
wp option delete '_wowrestro_delivery_label'
wp option delete '_wowrestro_listing_show_sidebar_count'
wp option delete '_wowrestro_listing_hide_cart_area'
wp option delete '_wowrestro_listing_item_image_display'
wp option delete '_wowrestro_exclude_products'
wp option delete '_wowrestro_popup_enable_image'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wowrestro_service_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wowrestro_service_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wowrestro_service_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wowrestro_service_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wowrestro_service_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wowrestro_service_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wowrestro_service_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wowrestro_service_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wowrestro_modifier_selection_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wowrestro_modifier_selection_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wowrestro_modifier_selection_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wowrestro_modifier_selection_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wowrestro_modifier_item_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wowrestro_modifier_item_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wowrestro_modifier_item_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wowrestro_modifier_item_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wowrestro_delivery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wowrestro_delivery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wowrestro_delivery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wowrestro_delivery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modifier_category_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modifier_category_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modifier_category_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modifier_category_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wowrestro_variation_price_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wowrestro_variation_price_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wowrestro_variation_price_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wowrestro_variation_price_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wowrestro_food_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wowrestro_food_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wowrestro_food_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wowrestro_food_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modifier_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modifier_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modifier_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modifier_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_food_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_food_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_food_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_food_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'food_item_modifier_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'food_item_modifier_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'food_item_modifier_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'food_item_modifier_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wowrestro_service_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wowrestro_service_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wowrestro_service_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wowrestro_service_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wowrestro_service_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wowrestro_service_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wowrestro_service_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wowrestro_service_timestamp'"

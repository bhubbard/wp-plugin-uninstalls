#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'restaurantpress_price_display_suffix'
wp option delete 'restaurantpress_meta_box_errors'
wp option delete 'restaurantpress_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'restaurantpress_admin_notice_%'"
wp option delete 'restaurantpress_db_version'
wp option delete 'restaurantpress_permalinks'
wp option delete 'restaurantpress_queue_flush_rewrite_rules'
wp option delete 'restaurantpress_admin_footer_text_rated'
wp option delete 'restaurantpress_enable_gallery_zoom'
wp option delete 'restaurantpress_enable_gallery_slider'
wp option delete 'restaurantpress_enable_gallery_lightbox'
wp option delete 'restaurantpress_colors_css'
wp option delete 'restaurantpress_version'
wp option delete 'restaurantpress_enable_reviews'
wp option delete 'current_theme_supports_restaurantpress'
wp option delete 'restaurantpress_default_catalog_orderby'
wp option delete 'restaurantpress_colors'
wp option delete 'restaurantpress_currency'
wp option delete 'restaurantpress_single_image_width'
wp option delete 'restaurantpress_thumbnail_image_width'
wp option delete 'restaurantpress_thumbnail_cropping'
wp option delete 'restaurantpress_thumbnail_cropping_custom_width'
wp option delete 'restaurantpress_thumbnail_cropping_custom_height'
wp option delete 'restaurantpress_currency_pos'
wp option delete 'restaurantpress_price_thousand_sep'
wp option delete 'restaurantpress_price_decimal_sep'
wp option delete 'restaurantpress_price_num_decimals'
wp option delete 'restaurantpress_enable_lightbox'
wp option delete 'restaurantpress_primary_color'
wp option delete 'restaurantpress_single_page_display'
wp option delete 'restaurantpress_food_single_page'
wp option delete 'food_thumbnail_image_size'
wp option delete 'food_single_image_size'

# Delete Transients
wp transient delete 'rp_extensions_sections'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rp_extensions_section_%' OR option_name LIKE '_site_transient_rp_extensions_section_%'"
wp transient delete 'rp_installing'
wp transient delete '_rp_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'restaurantpress_cleanup_sessions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chef_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chef_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chef_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chef_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_food_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_food_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_food_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_food_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'food_grouping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'food_grouping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'food_grouping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'food_grouping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_category_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_category_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_category_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_category_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_food_display_settings_moved_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_food_display_settings_moved_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_food_display_settings_moved_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_food_display_settings_moved_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'food_item_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'food_item_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'food_item_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'food_item_price'"

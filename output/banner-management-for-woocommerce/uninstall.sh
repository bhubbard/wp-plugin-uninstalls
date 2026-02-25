#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcbm_where_hear_about_us'
wp option delete 'wcbm_data_submited_in_sendiblue'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'jal_db_version'
wp option delete 'wbm_thankyou_page_stored_data'
wp option delete 'wbm_shop_page_stored_data'
wp option delete 'wbm_cart_page_stored_data'
wp option delete 'wbm_checkout_page_stored_data'
wp option delete 'wbm_banner_detail_page_stored_data'
wp option delete 'wbm_other_page_stored_data'
wp option delete 'wbm_prod_slider_settings_stored_data'

# Delete Transients
wp transient delete '_welcome_screen_activation_redirect_banner_management'
wp transient delete 'dscpw_name_address_fields'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbm_category_slider_general_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbm_category_slider_general_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbm_category_slider_general_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbm_category_slider_general_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbm_category_slider_display_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbm_category_slider_display_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbm_category_slider_display_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbm_category_slider_display_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbm_category_slider_thumbnail_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbm_category_slider_thumbnail_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbm_category_slider_thumbnail_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbm_category_slider_thumbnail_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbm_category_slider_sliders_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbm_category_slider_sliders_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbm_category_slider_sliders_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbm_category_slider_sliders_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbm_category_slider_typo_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbm_category_slider_typo_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbm_category_slider_typo_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbm_category_slider_typo_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbm_product_slider_general_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbm_product_slider_general_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbm_product_slider_general_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbm_product_slider_general_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbm_product_slider_display_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbm_product_slider_display_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbm_product_slider_display_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbm_product_slider_display_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbm_product_slider_sliders_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbm_product_slider_sliders_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbm_product_slider_sliders_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbm_product_slider_sliders_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbm_product_slider_typo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbm_product_slider_typo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbm_product_slider_typo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbm_product_slider_typo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"

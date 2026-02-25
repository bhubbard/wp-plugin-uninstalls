#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dgwt_wcas_version'
wp option delete 'dgwt_wcas_settings_version'
wp option delete 'dgwt_wcas_settings_version_pro'
wp option delete 'dgwt_wcas_activation_date'
wp option delete 'dgwt_wcas_db_json_support'
wp option delete 'dgwt_wcas_db_locking_support'
wp option delete 'dgwt_wcas_dismiss_elementor_template'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woof_try_ajax'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'woocommerce_manage_stock'
wp option delete 'discontinued_show_in_catalog'
wp option delete 'alg_wc_ean_frontend_search'
wp option delete 'wpm_pgw_search_by_code'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'dgwt_wcas_settings_show_advanced'
wp option delete 'astra-settings'
wp option delete 'generate_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'dgwt_wcas_searchable_custom_fields'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_dgwt_wcas_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_dgwt_wcas_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_dgwt_wcas_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_dgwt_wcas_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_dgwt_wcas_search_icon_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_dgwt_wcas_search_icon_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_dgwt_wcas_search_icon_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_dgwt_wcas_search_icon_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brand_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brand_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brand_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brand_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"

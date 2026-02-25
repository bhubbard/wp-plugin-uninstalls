#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdpad_gs_adjustment_discount_type'
wp option delete 'wdpad_gs_sequential_discount'
wp option delete 'wdpad_where_hear_about_us'
wp option delete 'wdpad_data_submited_in_sendiblue'
wp option delete 'woocommerce_weight_unit'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wdpad_version'
wp option delete 'wpdad_discount_id_list'
wp option delete 'woocommerce_tax_display_cart'

# Delete Transients
wp transient delete '_welcome_screen_wdpad_pro_mode_activation_redirect_data'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_settings_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_settings_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_settings_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_settings_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_settings_select_dpad_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_settings_select_dpad_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_settings_select_dpad_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_settings_select_dpad_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_settings_product_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_settings_product_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_settings_product_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_settings_product_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_settings_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_settings_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_settings_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_settings_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_settings_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_settings_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_settings_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_settings_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_time_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_time_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_time_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_time_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_time_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_time_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_time_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_time_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dynamic_pricing_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dynamic_pricing_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dynamic_pricing_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dynamic_pricing_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_chk_discount_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_chk_discount_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_chk_discount_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_chk_discount_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_discount_msg_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_discount_msg_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_discount_msg_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_discount_msg_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_discount_msg_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_discount_msg_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_discount_msg_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_discount_msg_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_discount_msg_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_discount_msg_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_discount_msg_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_discount_msg_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_sale_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_sale_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_sale_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_sale_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_chk_discount_msg_selected_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_chk_discount_msg_selected_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_chk_discount_msg_selected_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_chk_discount_msg_selected_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_selected_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_selected_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_selected_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_selected_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_select_day_of_week'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_select_day_of_week'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_select_day_of_week'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_select_day_of_week'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_chk_qty_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_chk_qty_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_chk_qty_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_chk_qty_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpad_per_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpad_per_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpad_per_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpad_per_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extra_product_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extra_product_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extra_product_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extra_product_cost'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cwpt_activated'
wp option delete 'cwpt_migirated'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_product_type_name_singular'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_product_type_name_singular'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_product_type_name_singular'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_product_type_name_singular'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_product_type_name_plural'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_product_type_name_plural'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_product_type_name_plural'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_product_type_name_plural'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_custom_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_custom_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_custom_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_custom_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_enable_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_enable_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_enable_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_enable_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_enable_admin_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_enable_admin_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_enable_admin_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_enable_admin_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_admin_tab_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_admin_tab_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_admin_tab_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_admin_tab_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_product_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_product_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_product_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_product_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_badge_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_badge_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_badge_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_badge_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_badge_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_badge_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_badge_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_badge_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_badge_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_badge_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_badge_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_badge_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_admin_fields_tab_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_admin_fields_tab_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_admin_fields_tab_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_admin_fields_tab_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwpt_front_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwpt_front_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwpt_front_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwpt_front_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"

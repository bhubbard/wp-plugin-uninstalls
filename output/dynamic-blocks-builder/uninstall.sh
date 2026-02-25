#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_country'
wp option delete 'dynamicblocks_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'dynamicblocks_installed_time'
wp option delete 'dynamicblocks_do_activation_redirect'
wp option delete 'dynamicblocks_dataset_filters'
wp option delete 'dynamicblocks_review_given'
wp option delete 'dynamicblocks_review_later'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_weight_unit'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'dynamicblock_products_list'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_control'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_control'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_control'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_control'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'title_control'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'title_control'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'title_control'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'title_control'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'short_code_control'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'short_code_control'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'short_code_control'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'short_code_control'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'where_to_display_control'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'where_to_display_control'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'where_to_display_control'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'where_to_display_control'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dynamicblock_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dynamicblock_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dynamicblock_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dynamicblock_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dynamicblock_block_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dynamicblock_block_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dynamicblock_block_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dynamicblock_block_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_hook_control'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_hook_control'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_hook_control'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_hook_control'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_priority_control'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_priority_control'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_priority_control'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_priority_control'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dynamicblock_product_set_control'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dynamicblock_product_set_control'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dynamicblock_product_set_control'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dynamicblock_product_set_control'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wccc_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wccc_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wccc_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wccc_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wccc_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wccc_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wccc_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wccc_rule'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cryptocurrency-product-for-woocommerce_options'
wp option delete 'woocommerce_checkout_address_2_field'
wp option delete 'woocommerce_enable_physical'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_round_at_subtotal'
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
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_ethereum_wallet_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_ethereum_wallet_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_ethereum_wallet_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_ethereum_wallet_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cryptocurrency_product_for_woocommerce_cryptocurrency_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cryptocurrency_product_for_woocommerce_cryptocurrency_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cryptocurrency_product_for_woocommerce_cryptocurrency_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cryptocurrency_product_for_woocommerce_cryptocurrency_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_select_cryptocurrency_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_select_cryptocurrency_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_select_cryptocurrency_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_select_cryptocurrency_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_text_input_cryptocurrency_minimum_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_text_input_cryptocurrency_minimum_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_text_input_cryptocurrency_minimum_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_text_input_cryptocurrency_minimum_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_text_input_cryptocurrency_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_text_input_cryptocurrency_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_text_input_cryptocurrency_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_text_input_cryptocurrency_step'"

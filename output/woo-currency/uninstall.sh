#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%orders_currencies'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_installed'"
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full_installed'"
wp option delete 'wcu_options_pro'
wp option delete 'wcfm_page_options'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'rg_gforms_currency'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_currency_pos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_opts_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_sent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unique_stats'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcu_currency_unavailable_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcu_currency_unavailable_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcu_currency_unavailable_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcu_currency_unavailable_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-tour-hst'"

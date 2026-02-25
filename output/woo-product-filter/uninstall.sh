#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_opts_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_overview_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_subscribe_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_rating_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_sent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unique_stats'"
wp option delete 'woocommerce_shop_page_display'
wp option delete 'woocommerce_category_archive_display'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'ywraq_hide_add_to_cart'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'

# Clear Cron Jobs
wp cron event delete 'wpf_calc_meta_indexing'
wp cron event delete 'wpf_calc_meta_indexing_shedule'
wp cron event delete 'wpf_calc_meta_optimizing_shedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcb2b_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcb2b_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcb2b_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcb2b_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'store_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'store_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'store_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'store_name'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpcw_time_interval_default'
wp option delete 'dpcw_time_interval'
wp option delete 'dpcw_counter_content'
wp option delete 'dpcw_show_on_single_product'
wp option delete 'dpcw_sync_time'
wp option delete 'dpcw_change_type'

# Clear Cron Jobs
wp cron event delete 'dpcw_update_product_price_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpcw_first_time_run'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpcw_first_time_run'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpcw_first_time_run'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpcw_first_time_run'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpcw_original_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpcw_original_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpcw_original_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpcw_original_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpcw_original_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpcw_original_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpcw_original_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpcw_original_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpcw_scheduled_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpcw_scheduled_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpcw_scheduled_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpcw_scheduled_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_dpcw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_dpcw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_dpcw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_dpcw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpcw_change_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpcw_change_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpcw_change_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpcw_change_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpcw_last_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpcw_last_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpcw_last_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpcw_last_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpcw_raise_drop_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpcw_raise_drop_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpcw_raise_drop_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpcw_raise_drop_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpcw_raise_drop_expired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpcw_raise_drop_expired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpcw_raise_drop_expired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpcw_raise_drop_expired'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"

#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_trs_sales_count_down__count_down_position'
wp option delete '_trs_sales_count_down__style_type'
wp option delete '_trs_sales_count_down__display_on_listing_page'
wp option delete '_trs_sales_count_down__display_after_expiring'
wp option delete '_trs_sales_count_down__display_progress_bar'
wp option delete '_trs_sales_count_down__progress_bar_text'
wp option delete '_trs_sales_count_down__progress_bar_primary_color'
wp option delete '_trs_sales_count_down__progress_bar_secondary_color'
wp option delete '_trs_sales_count_down__progress_bar_percentage'
wp option delete '_trs_sales_count_down__time_zone'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_primary_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trs_sales_count_down__progress_bar_primary_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_primary_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_primary_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_secondary_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trs_sales_count_down__progress_bar_secondary_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_secondary_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_secondary_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trs_sales_count_down__progress_bar_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trs_sales_count_down__override_global_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trs_sales_count_down__override_global_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trs_sales_count_down__override_global_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trs_sales_count_down__override_global_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trs_sales_count_down__style_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trs_sales_count_down__style_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trs_sales_count_down__style_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trs_sales_count_down__style_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trs_sales_count_down__display_on_listing_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trs_sales_count_down__display_on_listing_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trs_sales_count_down__display_on_listing_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trs_sales_count_down__display_on_listing_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trs_sales_count_down__display_after_expiring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trs_sales_count_down__display_after_expiring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trs_sales_count_down__display_after_expiring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trs_sales_count_down__display_after_expiring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trs_sales_count_down__count_down_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trs_sales_count_down__count_down_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trs_sales_count_down__count_down_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trs_sales_count_down__count_down_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trs_sales_count_down__display_progress_bar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trs_sales_count_down__display_progress_bar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trs_sales_count_down__display_progress_bar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trs_sales_count_down__display_progress_bar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trs_sales_count_down__progress_bar_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trs_sales_count_down__progress_bar_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"

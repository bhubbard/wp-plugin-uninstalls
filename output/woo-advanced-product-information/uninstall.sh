#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wapi_settings'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_display_shop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"

# Delete Transients
wp transient delete 'villatheme_call'
wp transient delete 'villatheme_ads'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wapi_fake_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wapi_fake_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wapi_fake_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wapi_fake_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wapi_category_rank_alltime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wapi_category_rank_alltime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wapi_category_rank_alltime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wapi_category_rank_alltime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wapi_category_rank_week'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wapi_category_rank_week'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wapi_category_rank_week'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wapi_category_rank_week'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wapi_category_rank_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wapi_category_rank_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wapi_category_rank_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wapi_category_rank_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wapi_sold_quantity_alltime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wapi_sold_quantity_alltime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wapi_sold_quantity_alltime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wapi_sold_quantity_alltime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wapi_sold_quantity_lastweek'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wapi_sold_quantity_lastweek'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wapi_sold_quantity_lastweek'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wapi_sold_quantity_lastweek'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wapi_sold_quantity_lastmonth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wapi_sold_quantity_lastmonth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wapi_sold_quantity_lastmonth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wapi_sold_quantity_lastmonth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wapi_recent_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wapi_recent_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wapi_recent_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wapi_recent_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wapi_number_of_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wapi_number_of_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wapi_number_of_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wapi_number_of_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wapi_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wapi_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wapi_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wapi_settings'"

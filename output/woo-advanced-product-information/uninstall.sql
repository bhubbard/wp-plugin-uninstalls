-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wapi_settings', 'woocommerce_enable_reviews', 'woocommerce_enable_review_rating', 'woocommerce_prices_include_tax', 'woocommerce_tax_display_shop', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_ads', 'villatheme_notices', 'villatheme_called');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wapi_fake_stock', 'wapi_category_rank_alltime', 'wapi_category_rank_week', 'wapi_category_rank_month', '_wapi_sold_quantity_alltime', '_wapi_sold_quantity_lastweek', '_wapi_sold_quantity_lastmonth', '_wapi_recent_quantity', '_wapi_number_of_views', '_wapi_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wapi_fake_stock', 'wapi_category_rank_alltime', 'wapi_category_rank_week', 'wapi_category_rank_month', '_wapi_sold_quantity_alltime', '_wapi_sold_quantity_lastweek', '_wapi_sold_quantity_lastmonth', '_wapi_recent_quantity', '_wapi_number_of_views', '_wapi_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wapi_fake_stock', 'wapi_category_rank_alltime', 'wapi_category_rank_week', 'wapi_category_rank_month', '_wapi_sold_quantity_alltime', '_wapi_sold_quantity_lastweek', '_wapi_sold_quantity_lastmonth', '_wapi_recent_quantity', '_wapi_number_of_views', '_wapi_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wapi_fake_stock', 'wapi_category_rank_alltime', 'wapi_category_rank_week', 'wapi_category_rank_month', '_wapi_sold_quantity_alltime', '_wapi_sold_quantity_lastweek', '_wapi_sold_quantity_lastmonth', '_wapi_recent_quantity', '_wapi_number_of_views', '_wapi_settings');


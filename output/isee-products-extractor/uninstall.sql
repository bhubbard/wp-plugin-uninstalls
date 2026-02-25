-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_status_in_isee', 'wpei_show_datasheets', 'cached_chart_data', 'cached_most_searched_keywords', 'shop_ranking_data', 'cached_most_clicked_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_english_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_english_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_english_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_english_name');


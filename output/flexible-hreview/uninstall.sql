-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fhr_categories', 'fhr_rating_max', 'fhr_use_average', 'fhr_use_average_label', 'fhr_use_average_text', 'fhr_before_rating_text', 'fhr_after_rating_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hreview_summary', 'hreview_type', 'hreview_item', 'restaurant_name', 'hreview_item_url', 'restaurant_url', 'hreview_rating_max', 'review_summary');
DELETE FROM wp_usermeta WHERE meta_key IN ('hreview_summary', 'hreview_type', 'hreview_item', 'restaurant_name', 'hreview_item_url', 'restaurant_url', 'hreview_rating_max', 'review_summary');
DELETE FROM wp_termmeta WHERE meta_key IN ('hreview_summary', 'hreview_type', 'hreview_item', 'restaurant_name', 'hreview_item_url', 'restaurant_url', 'hreview_rating_max', 'review_summary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hreview_summary', 'hreview_type', 'hreview_item', 'restaurant_name', 'hreview_item_url', 'restaurant_url', 'hreview_rating_max', 'review_summary');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_commentary';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_commentary';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_commentary';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_commentary';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_max';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_max';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_max';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_max';


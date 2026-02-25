-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api_key', 'no_books', 'no_book', 'service_url', 'api_source', 'typesense_catalog', 'typesense_api_key', 'typesense_host', 'widget_book_link_page', 'widget_book_link_pattern', 'product_details_cache_lifetime', 'search_results_cache_lifetime', 'isbn_lookups_cache_lifetime', 'product_details_seo_title', 'product_details_seo_description', 'product_details_seo_canonical', 'widget_retailer_name', 'retailer_image', 'widget_retailer_link_pattern', 'widget_retailer_tracking_pattern', 'retailer_link_formats', 'supapress');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_widget_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_widget_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_widget_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_widget_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';


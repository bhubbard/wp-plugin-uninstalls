-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beeking_search_api_key', 'beeking_search_use_ai', 'beeking_search_debounce_time', 'beeking_search_show_price', 'beeking_search_show_category', 'beeking_search_show_brand', 'beeking_search_advanced_filters', 'beeking_search_enable_price_filter', 'beeking_search_enable_category_filter', 'beeking_search_enable_tags_filter', 'beeking_search_enable_brand_filter', 'beeking_search_enable_availability_filter', 'beeking_search_top_offset', 'beeking_search_button_bg_color', 'beeking_search_text_color', 'beeking_search_debug', 'beeking_search_placeholder_text', 'beeking_search_related_heading', 'beeking_api_key_valid', 'beeking_search_floating_enabled', 'beeking_search_replace_enabled', 'beeking_search_mobile_fullscreen', 'beeking_block_mobile_fullscreen', 'beeking_currency_symbol', 'beeking_price_range', 'beeking_current_sync_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_brand', 'total_sales');
DELETE FROM wp_usermeta WHERE meta_key IN ('_brand', 'total_sales');
DELETE FROM wp_termmeta WHERE meta_key IN ('_brand', 'total_sales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_brand', 'total_sales');


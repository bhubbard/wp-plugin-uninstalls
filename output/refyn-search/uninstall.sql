-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api_key', 'trigger', 'use_refyn', 'use_popup', 'refyn_page', 'page_title', 'search_placeholder', 'no_found', 'out_of_stock', 'sku_search', 'search_content', 'num_suggestions', 'num_categories', 'num_tags', 'num_products', 'num_posts', 'num_pages', 'cutoff_count', 'use_stopwords', 'use_spellcheck', 'use_sound', 'use_ai', 'use_history', 'use_scraping', 'desc_count', 'display_cats', 'display_tags', 'display_images', 'display_sku', 'display_price', 'background_color', 'highlight_color', 'primary_color', 'second_color', 'page_id');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tickers_title', 'per_page_item', 'post_type', 'title_color', 'items_color', 'title_bg_color', 'items_bg_color', 'effect_type');


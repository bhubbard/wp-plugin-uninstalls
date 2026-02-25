-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cefwjc_search', 'cefwjc_skintone', 'cefwjc_position_emojis', 'cefwjc_filter_position', 'cefwjc_skintone_style', 'cefwjc_search_position', 'cefwjc_recent_emojis');


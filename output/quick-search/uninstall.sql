-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quick_search_form_id', 'quick_search_max_chars', 'quick_search_show_posts', 'quick_search_show_pages', 'quick_search_show_comments', 'quick_search_posts_limit', 'quick_search_pages_limit', 'quick_search_comments_limit', 'quick_search_menu_width', 'quick_search_menu_bgcolor', 'quick_search_menu_label_bgcolor', 'quick_search_menu_label_color');


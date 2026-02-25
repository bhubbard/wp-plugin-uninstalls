-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('codecolorer_language_notification', 'codecolorer_lines_to_scroll', 'codecolorer_width', 'codecolorer_height', 'codecolorer_rss_width', 'codecolorer_tab_size', 'codecolorer_theme', 'codecolorer_inline_theme', 'codecolorer_line_numbers', 'codecolorer_disable_keyword_linking', 'codecolorer_css_class', 'codecolorer_css_style', 'codecolorer_concurrent_notification');
DELETE FROM wp_options WHERE option_name LIKE '%_notification';


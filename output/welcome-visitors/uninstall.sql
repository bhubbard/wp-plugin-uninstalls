-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('welcome_visitor_css_style', 'rss_address', 'welcome_words', 'default');


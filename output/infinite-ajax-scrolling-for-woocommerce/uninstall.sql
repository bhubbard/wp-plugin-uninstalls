-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image_url', 'scroll_contentSelector', 'scroll_nextSelector', 'scroll_itemSelector', 'scrolling_status');


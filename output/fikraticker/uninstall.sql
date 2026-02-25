-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linked', 'tk-direction', 'anim', 'span-text-color', 'span-color', 'tk-width', 'ticker_posts_number', 'ticker-category', 'span-name', 'speed', 'timeout');


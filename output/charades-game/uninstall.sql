-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('charades_categories_combined', 'charades_words', 'charades_custom_texts');


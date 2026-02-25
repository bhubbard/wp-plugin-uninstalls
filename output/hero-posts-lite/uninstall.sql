-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hero_posts_words_per_minute', 'hero_posts_image_replacement');
DELETE FROM wp_options WHERE option_name LIKE '%-license';


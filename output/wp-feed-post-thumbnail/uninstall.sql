-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-feed-post-thumbnail_options');
DELETE FROM wp_options WHERE option_name LIKE '%_options';


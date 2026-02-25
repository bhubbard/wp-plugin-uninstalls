-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comments_1', 'comments_2', 'comments_3', 'comments_4', 'comments_5', 'comments_6', 'comments_7', 'comments_8', 'comments_9', 'comments_10', 'comments_11');
DELETE FROM wp_options WHERE option_name LIKE 'comments_%';


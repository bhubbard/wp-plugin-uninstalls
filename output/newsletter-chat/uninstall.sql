-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posts_title', 'posts_footer', 'nw_cng', 'nw_lng');


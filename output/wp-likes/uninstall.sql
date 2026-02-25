-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_likes_css', 'wp_likes_options', 'wp_likes_text');


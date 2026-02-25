-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_post_nav_options', 'wp_post_nav_version', 'wp-post-nav');


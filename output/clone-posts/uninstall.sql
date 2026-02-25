-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clone_posts_post_status', 'clone_posts_post_date', 'clone_posts_post_type');


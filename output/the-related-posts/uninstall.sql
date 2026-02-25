-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('obi_related_posts_limit', 'obi_related_posts_title', 'obi_related_posts_list', 'obi_related_posts_heading');


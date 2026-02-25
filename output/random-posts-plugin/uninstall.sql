-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('random-posts', 'widget_rrm_random_posts', 'recent-posts');


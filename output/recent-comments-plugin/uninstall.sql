-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recent-comments', 'widget_rrm_recent_comments', 'recent-posts');


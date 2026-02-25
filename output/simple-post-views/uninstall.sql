-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spvc_show_views_after_content', 'spvc_show_views_before_content');


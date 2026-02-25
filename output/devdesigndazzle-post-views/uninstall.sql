-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dddPostViews_post_views_settings', 'dddPostViews_post_views_version');


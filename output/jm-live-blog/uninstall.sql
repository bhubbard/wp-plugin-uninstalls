-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jm_live_blog_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('live_blog_updates', 'live_blog_color_scheme', 'live_blog_alert_color', 'live_blog_show_widget', 'live_blog_widget_title', 'live_blog_widget_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('live_blog_updates', 'live_blog_color_scheme', 'live_blog_alert_color', 'live_blog_show_widget', 'live_blog_widget_title', 'live_blog_widget_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('live_blog_updates', 'live_blog_color_scheme', 'live_blog_alert_color', 'live_blog_show_widget', 'live_blog_widget_title', 'live_blog_widget_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('live_blog_updates', 'live_blog_color_scheme', 'live_blog_alert_color', 'live_blog_show_widget', 'live_blog_widget_title', 'live_blog_widget_description');


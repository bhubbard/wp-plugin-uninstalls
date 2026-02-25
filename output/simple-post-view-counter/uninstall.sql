-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpvc_exclude_admins', 'simpvc_display_position', 'simpvc_show_on_homepage', 'simpvc_show_on_archive', 'widget_simpvc_most_viewed_widget', 'simpvc_popular_posts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('simpvc_last_viewed', 'simpvc_post_views_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('simpvc_last_viewed', 'simpvc_post_views_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('simpvc_last_viewed', 'simpvc_post_views_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('simpvc_last_viewed', 'simpvc_post_views_count');


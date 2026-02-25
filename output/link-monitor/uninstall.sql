-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('link_monitor_in_posts', 'link_monitor_in_pages', 'link_monitor_in_excerpt', 'link_monitor_get', 'link_monitor_in_comments', 'link_monitor_in_feed', 'link_monitor_in_custom_posts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_links');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_links');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_links');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_links');


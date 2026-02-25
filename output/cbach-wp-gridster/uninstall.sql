-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gridster_layout', '_gridster_query_posts_not_in', '_gridster_dimensions', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gridster_layout', '_gridster_query_posts_not_in', '_gridster_dimensions', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gridster_layout', '_gridster_query_posts_not_in', '_gridster_dimensions', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gridster_layout', '_gridster_query_posts_not_in', '_gridster_dimensions', 'dismissed_wp_pointers');


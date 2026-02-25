-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('p2s__use_locations', 'p2s_use_excerpt', 'p2s_use_title', 'p2s_post_types', 'p2s_use_locations');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_to_sidebar_pageTitle', 'post_to_sidebar_excerpt', 'post_to_sidebar_title', 'post_to_sidebar_location');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_to_sidebar_pageTitle', 'post_to_sidebar_excerpt', 'post_to_sidebar_title', 'post_to_sidebar_location');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_to_sidebar_pageTitle', 'post_to_sidebar_excerpt', 'post_to_sidebar_title', 'post_to_sidebar_location');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_to_sidebar_pageTitle', 'post_to_sidebar_excerpt', 'post_to_sidebar_title', 'post_to_sidebar_location');


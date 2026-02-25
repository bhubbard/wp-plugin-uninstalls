-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sm_as_gallery', 'sm_post_type', 'sm_category', 'simple_post_per_page', 'simple_post_orderby', 'simple_post_order', 'simple_post_darkbox', 'simple_post_author', 'sm_post_comment', 'sm_post_title', 'sm_shortcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('sm_as_gallery', 'sm_post_type', 'sm_category', 'simple_post_per_page', 'simple_post_orderby', 'simple_post_order', 'simple_post_darkbox', 'simple_post_author', 'sm_post_comment', 'sm_post_title', 'sm_shortcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('sm_as_gallery', 'sm_post_type', 'sm_category', 'simple_post_per_page', 'simple_post_orderby', 'simple_post_order', 'simple_post_darkbox', 'simple_post_author', 'sm_post_comment', 'sm_post_title', 'sm_shortcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sm_as_gallery', 'sm_post_type', 'sm_category', 'simple_post_per_page', 'simple_post_orderby', 'simple_post_order', 'simple_post_darkbox', 'simple_post_author', 'sm_post_comment', 'sm_post_title', 'sm_shortcode');


-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_display_title_excerpt', '_link', '_text', '_display_link_text', '_link_to_featured_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_display_title_excerpt', '_link', '_text', '_display_link_text', '_link_to_featured_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_display_title_excerpt', '_link', '_text', '_display_link_text', '_link_to_featured_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_display_title_excerpt', '_link', '_text', '_display_link_text', '_link_to_featured_image');


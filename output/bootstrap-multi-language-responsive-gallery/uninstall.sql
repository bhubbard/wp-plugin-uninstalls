-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gallery_layout', 'gallery_title', 'gallery_content', 'gallery_post_count', 'gallery_order_by', 'gallery_order');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'Layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'Layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'Layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'Layout');


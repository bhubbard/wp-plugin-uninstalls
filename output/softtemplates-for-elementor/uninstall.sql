-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_page_settings', '_elementor_template_type', 'preview_post_id', 'ae_preview_author', 'uael-social-share-count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_page_settings', '_elementor_template_type', 'preview_post_id', 'ae_preview_author', 'uael-social-share-count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_page_settings', '_elementor_template_type', 'preview_post_id', 'ae_preview_author', 'uael-social-share-count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_page_settings', '_elementor_template_type', 'preview_post_id', 'ae_preview_author', 'uael-social-share-count');


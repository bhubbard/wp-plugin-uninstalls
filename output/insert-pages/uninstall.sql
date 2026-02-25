-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpip_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vcvSourceCssFileUrl', 'vcvSourceCssFileHash', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', 'insert_pages_tinymce_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('vcvSourceCssFileUrl', 'vcvSourceCssFileHash', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', 'insert_pages_tinymce_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('vcvSourceCssFileUrl', 'vcvSourceCssFileHash', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', 'insert_pages_tinymce_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vcvSourceCssFileUrl', 'vcvSourceCssFileHash', '_wpb_post_custom_css', '_wpb_shortcodes_custom_css', 'insert_pages_tinymce_state');


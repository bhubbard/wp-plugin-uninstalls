-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lswp_plugin_clicked', 'lswp_pro_active');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_logosliderwpmeta', '_lgx_lsp_shortcodes_meta', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_logosliderwpmeta', '_lgx_lsp_shortcodes_meta', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_logosliderwpmeta', '_lgx_lsp_shortcodes_meta', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_logosliderwpmeta', '_lgx_lsp_shortcodes_meta', '_wp_attachment_image_alt');


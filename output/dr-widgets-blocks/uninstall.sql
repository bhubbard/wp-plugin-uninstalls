-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_block', 'drwidgetsblocks-widget', 'dr_widgets_blocks_google_fonts', 'drwb_block_settings', 'drwb_widget_settings', 'delisho_pro_license');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE '_drwidgetsblocks_preview_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_drwidgetsblocks_css', '_drwidgetsblocks_active', 'dr_taxonomy_metas');
DELETE FROM wp_usermeta WHERE meta_key IN ('_drwidgetsblocks_css', '_drwidgetsblocks_active', 'dr_taxonomy_metas');
DELETE FROM wp_termmeta WHERE meta_key IN ('_drwidgetsblocks_css', '_drwidgetsblocks_active', 'dr_taxonomy_metas');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_drwidgetsblocks_css', '_drwidgetsblocks_active', 'dr_taxonomy_metas');


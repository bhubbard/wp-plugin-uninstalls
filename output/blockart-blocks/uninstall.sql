-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_blockart_version', '_blockart_activation_redirect', '_blockart_activation_time', '_blockart_blocks_css', 'widget_block', '_blockart_global_styles_generated_timestamp', '_blockart_settings', '_blockart_widget_css', '_blockart_dynamic_css_print_method', 'downloaded_font_files', '_blockart_library_data', '_blockart_media_items');
DELETE FROM wp_options WHERE option_name LIKE '%]';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_blockart_blocks_css', '_blockart_review');
DELETE FROM wp_usermeta WHERE meta_key IN ('_blockart_blocks_css', '_blockart_review');
DELETE FROM wp_termmeta WHERE meta_key IN ('_blockart_blocks_css', '_blockart_review');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_blockart_blocks_css', '_blockart_review');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grigora_kit_settings', 'site_logo', 'grigora_blocks_typography', 'grigora_st_logo_id', 'grigora_st_templates_meta', 'downloaded_font_files', 'grigora_st_templates_meta_updated_flag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_grigora-toc-disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_grigora-toc-disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_grigora-toc-disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_grigora-toc-disable');


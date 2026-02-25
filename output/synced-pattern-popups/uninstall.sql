-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sppopups_tldr_enabled', 'sppopups_tldr_prompt_custom', 'sppopups_tldr_prompt', 'sppopups_tldr_cache_ttl', 'sppopups_defaults_pattern', 'sppopups_defaults_tldr', 'sppopups_defaults_gallery', 'sppopups_redirect_after_activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_pattern_sync_status', '_sppopups_modal_assets', '_sppopups_gallery_assets', '_sppopups_support', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_pattern_sync_status', '_sppopups_modal_assets', '_sppopups_gallery_assets', '_sppopups_support', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_pattern_sync_status', '_sppopups_modal_assets', '_sppopups_gallery_assets', '_sppopups_support', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_pattern_sync_status', '_sppopups_modal_assets', '_sppopups_gallery_assets', '_sppopups_support', '_wp_attachment_image_alt');


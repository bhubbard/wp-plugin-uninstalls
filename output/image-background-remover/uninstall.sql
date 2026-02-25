-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rmbg_api_key', 'rmbg_processing_mode', 'rmbg_auto_removal_enabled', 'rmbg_items_per_page', 'rmbg_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rmbg_processed', '_rmbg_original_image', '_rmbg_output_image', 'original_image_id', '_rmbg_original_id', '_rmbg_auto_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rmbg_processed', '_rmbg_original_image', '_rmbg_output_image', 'original_image_id', '_rmbg_original_id', '_rmbg_auto_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rmbg_processed', '_rmbg_original_image', '_rmbg_output_image', 'original_image_id', '_rmbg_original_id', '_rmbg_auto_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rmbg_processed', '_rmbg_original_image', '_rmbg_output_image', 'original_image_id', '_rmbg_original_id', '_rmbg_auto_processed');


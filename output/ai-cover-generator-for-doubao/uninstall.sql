-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aicg_api_key', 'aicg_api_base_url', 'aicg_text_model', 'aicg_image_model');


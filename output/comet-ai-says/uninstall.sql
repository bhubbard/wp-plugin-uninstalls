-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcmt_aisays_custom_language', 'wpcmt_aisays_provider', 'wpcmt_aisays_total_generations', 'wpcmt_aisays_gemini_model', 'wpcmt_aisays_language', 'wpcmt_aisays_openai_model', 'wpcmt_aisays_prompt_template', 'wpcmt_aisays_display_mode', 'wpcmt_aisays_display_position', 'wpcmt_aisays_shortcode', 'wpcmt_aisays_max_tokens', 'wpcmt_aisays_gemini_api_key', 'wpcmt_aisays_openai_api_key', 'wpcmt_aisays_daily_usage');
DELETE FROM wp_options WHERE option_name LIKE 'wpcmt_aisays_bulk_ids_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpcmt_aisays_description', '_wpcmt_aisays_language', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpcmt_aisays_description', '_wpcmt_aisays_language', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpcmt_aisays_description', '_wpcmt_aisays_language', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpcmt_aisays_description', '_wpcmt_aisays_language', '_wp_attachment_image_alt');


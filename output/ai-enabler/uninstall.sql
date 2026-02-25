-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rgfb_openai_api_key', 'rgfb_openai_model', 'rgfb_stability_key', 'rgfb_fal_key', 'rgfb_leonardo_key', 'rgfb_claude_key', 'rgfb_claude_model', 'rgfb_image_generation_model', 'rgfb_limit_image_requests_by_ip', 'rgfb_image_generation_strength', 'rgfb_video_resolution', 'rgfb_FAL_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shortcode', 'structure');
DELETE FROM wp_usermeta WHERE meta_key IN ('shortcode', 'structure');
DELETE FROM wp_termmeta WHERE meta_key IN ('shortcode', 'structure');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shortcode', 'structure');


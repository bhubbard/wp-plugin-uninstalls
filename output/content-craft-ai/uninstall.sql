-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content_craft_ai_api_key', 'content_craft_ai_user_settings', 'content_craft_ai_token', 'content_craft_ai_active_subscription', 'content_craft_ai_pending_plan_type', 'content_craft_ai_internal_links_updated', 'content_craft_ai_manual_logout', 'content_craft_ai_last_subscription_request', 'content_craft_ai_notifications');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_description', 'rank_math_focus_keyword');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_description', 'rank_math_focus_keyword');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_description', 'rank_math_focus_keyword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_description', 'rank_math_focus_keyword');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('preview_ai_api_key', 'preview_ai_needs_first_try', 'preview_ai_needs_onboarding', 'preview_ai_enabled', 'preview_ai_max_previews_per_user_weekly', 'preview_ai_analytics_enabled', 'preview_ai_display_mode', 'preview_ai_button_text', 'preview_ai_button_icon', 'preview_ai_button_position', 'preview_ai_button_shape', 'preview_ai_button_height', 'preview_ai_button_full_width', 'preview_ai_accent_color', 'preview_ai_store_compatibility', 'preview_ai_activation_time', 'preview_ai_api_endpoint', 'astra-settings', 'generate_settings', 'et_divi_accent_color', 'preview_ai_account_status');
DELETE FROM wp_options WHERE option_name LIKE 'preview_ai_bulk_result_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_preview_ai_image_analysis', '_preview_ai_supported', '_preview_ai_recommended_subtype', '_preview_ai_garment_type', '_preview_ai_enabled', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_preview_ai_image_analysis', '_preview_ai_supported', '_preview_ai_recommended_subtype', '_preview_ai_garment_type', '_preview_ai_enabled', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_preview_ai_image_analysis', '_preview_ai_supported', '_preview_ai_recommended_subtype', '_preview_ai_garment_type', '_preview_ai_enabled', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_preview_ai_image_analysis', '_preview_ai_supported', '_preview_ai_recommended_subtype', '_preview_ai_garment_type', '_preview_ai_enabled', '_thumbnail_id');


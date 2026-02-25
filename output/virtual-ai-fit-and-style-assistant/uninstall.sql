-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aitnb_settings', 'aitnb_activation_status', 'aitnb_gemini_models_list', 'aitnb_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE 'aitnb_style_recs_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aitnb_enable_tryon', '_aitnb_item_type', '_aitnb_overlay_asset_id', '_aitnb_ar_mode', '_aitnb_asset_position', '_aitnb_asset_scale', '_aitnb_enable_fit_recommender', '_aitnb_size_chart', '_aitnb_enable_style_assistant', '_aitnb_style_assistant_categories', '_aitnb_purchase_tracked');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aitnb_enable_tryon', '_aitnb_item_type', '_aitnb_overlay_asset_id', '_aitnb_ar_mode', '_aitnb_asset_position', '_aitnb_asset_scale', '_aitnb_enable_fit_recommender', '_aitnb_size_chart', '_aitnb_enable_style_assistant', '_aitnb_style_assistant_categories', '_aitnb_purchase_tracked');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aitnb_enable_tryon', '_aitnb_item_type', '_aitnb_overlay_asset_id', '_aitnb_ar_mode', '_aitnb_asset_position', '_aitnb_asset_scale', '_aitnb_enable_fit_recommender', '_aitnb_size_chart', '_aitnb_enable_style_assistant', '_aitnb_style_assistant_categories', '_aitnb_purchase_tracked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aitnb_enable_tryon', '_aitnb_item_type', '_aitnb_overlay_asset_id', '_aitnb_ar_mode', '_aitnb_asset_position', '_aitnb_asset_scale', '_aitnb_enable_fit_recommender', '_aitnb_size_chart', '_aitnb_enable_style_assistant', '_aitnb_style_assistant_categories', '_aitnb_purchase_tracked');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('preorder_timer_hpos_notice_shown', 'preorder_timer_product_ids', 'preorder_timer_style', 'preorder_timer_text', 'preorder_timer_expiry_action', 'preorder_timer_expired_message', 'preorder_timer_enabled', 'preorder_timer_settings', 'preorder_timer_version', 'woocommerce_hpos_incompatible_plugins', 'woocommerce_features_cache', 'preorder_timer_hpos_compatibility_checked', 'preorder_timer_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_preorder_enabled', '_preorder_available_date', '_preorder_available_time', '_preorder_button_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_preorder_enabled', '_preorder_available_date', '_preorder_available_time', '_preorder_button_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_preorder_enabled', '_preorder_available_date', '_preorder_available_time', '_preorder_button_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_preorder_enabled', '_preorder_available_date', '_preorder_available_time', '_preorder_button_text');


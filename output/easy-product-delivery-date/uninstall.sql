-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woopdd_settings_default_text', 'woopdd_settings_day_off', 'woopdd_settings_date_display_position', 'woopdd_settings_custom_css', 'woopdd_is_installed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woopdd_variation_delivery_day_count', 'woopdd_variation_delivery_custom_msg', 'woopdd_enable_for_this', 'woopdd_enable_for_this_variations', 'woopdd_delivery_day_count', 'woopdd_delivery_custom_msg');
DELETE FROM wp_usermeta WHERE meta_key IN ('woopdd_variation_delivery_day_count', 'woopdd_variation_delivery_custom_msg', 'woopdd_enable_for_this', 'woopdd_enable_for_this_variations', 'woopdd_delivery_day_count', 'woopdd_delivery_custom_msg');
DELETE FROM wp_termmeta WHERE meta_key IN ('woopdd_variation_delivery_day_count', 'woopdd_variation_delivery_custom_msg', 'woopdd_enable_for_this', 'woopdd_enable_for_this_variations', 'woopdd_delivery_day_count', 'woopdd_delivery_custom_msg');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woopdd_variation_delivery_day_count', 'woopdd_variation_delivery_custom_msg', 'woopdd_enable_for_this', 'woopdd_enable_for_this_variations', 'woopdd_delivery_day_count', 'woopdd_delivery_custom_msg');


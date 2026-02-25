-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace', 'elm_settings', 'elm_access_active_taxonomy', 'elm_access_supported_post_types', '_welcome_redirect_rmp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('elm_user_level_data', '_elm_level_price', '_elm_level_duration', '_elm_level_duration_unit', '_elm_level_billing_type', '_elm_level_status', '_elm_level_period_type', '_elm_level_url', '_elm_associated_levels', '_elm_level_enable_restriction', '_edd_elm_pricing_enable', '_edd_elm_level', 'edd_variable_prices', 'first_name', 'last_name', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('elm_user_level_data', '_elm_level_price', '_elm_level_duration', '_elm_level_duration_unit', '_elm_level_billing_type', '_elm_level_status', '_elm_level_period_type', '_elm_level_url', '_elm_associated_levels', '_elm_level_enable_restriction', '_edd_elm_pricing_enable', '_edd_elm_level', 'edd_variable_prices', 'first_name', 'last_name', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('elm_user_level_data', '_elm_level_price', '_elm_level_duration', '_elm_level_duration_unit', '_elm_level_billing_type', '_elm_level_status', '_elm_level_period_type', '_elm_level_url', '_elm_associated_levels', '_elm_level_enable_restriction', '_edd_elm_pricing_enable', '_edd_elm_level', 'edd_variable_prices', 'first_name', 'last_name', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('elm_user_level_data', '_elm_level_price', '_elm_level_duration', '_elm_level_duration_unit', '_elm_level_billing_type', '_elm_level_status', '_elm_level_period_type', '_elm_level_url', '_elm_associated_levels', '_elm_level_enable_restriction', '_edd_elm_pricing_enable', '_edd_elm_level', 'edd_variable_prices', 'first_name', 'last_name', 'nickname');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lp_rgv2_credentials', 'lp_rg_global_options', 'lp_rgv2_just_onboarded', 'lp_rg_merchant_credentials', 'lp_rg_version', 'lp_rg_settings_options', 'lp_rgv2_global_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rg_has_paywall', '_rg_specific_paywall', '_edit_last', '_rg_title', '_rg_access_to', '_rg_access_entity', '_rg_preview_id', '_rg_specific_posts', '_rg_individual_option', '_rg_options_order', '_rg_is_active', '_rg_price', '_rg_revenue', '_rg_duration', '_rg_period', '_rg_custom_title', '_rg_custom_desc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rg_has_paywall', '_rg_specific_paywall', '_edit_last', '_rg_title', '_rg_access_to', '_rg_access_entity', '_rg_preview_id', '_rg_specific_posts', '_rg_individual_option', '_rg_options_order', '_rg_is_active', '_rg_price', '_rg_revenue', '_rg_duration', '_rg_period', '_rg_custom_title', '_rg_custom_desc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rg_has_paywall', '_rg_specific_paywall', '_edit_last', '_rg_title', '_rg_access_to', '_rg_access_entity', '_rg_preview_id', '_rg_specific_posts', '_rg_individual_option', '_rg_options_order', '_rg_is_active', '_rg_price', '_rg_revenue', '_rg_duration', '_rg_period', '_rg_custom_title', '_rg_custom_desc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rg_has_paywall', '_rg_specific_paywall', '_edit_last', '_rg_title', '_rg_access_to', '_rg_access_entity', '_rg_preview_id', '_rg_specific_posts', '_rg_individual_option', '_rg_options_order', '_rg_is_active', '_rg_price', '_rg_revenue', '_rg_duration', '_rg_period', '_rg_custom_title', '_rg_custom_desc');


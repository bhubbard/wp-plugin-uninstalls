-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quarkcode_enable_gallery', 'quarkcode_max_images_session', 'quarkcode_enable_continuous_editing', 'quarkcode_primary_color', 'quarkcode_secondary_color', 'quarkcode_button_color', 'quarkcode_text_color', 'quarkcode_background_style', 'quarkcode_api_key', 'quarkcode_rate_limit_hour', 'quarkcode_rate_limit_day', 'quarkcode_rate_limit_month', 'quarkcode_allowed_roles');
DELETE FROM wp_options WHERE option_name LIKE 'quarkcode_rate_hour_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quarkcode_dismissed_premium_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('quarkcode_dismissed_premium_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('quarkcode_dismissed_premium_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quarkcode_dismissed_premium_notice');


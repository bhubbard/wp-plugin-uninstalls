-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('egf_version', 'egf_force_user_redirect', 'egf_show_admin_pointer', 'tt-font-google-api-key', 'tt_font_theme_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('control_description', 'force_styles', 'control_selectors', 'min_screen_amount', 'min_screen_unit', 'max_screen_amount', 'max_screen_unit', 'control_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('control_description', 'force_styles', 'control_selectors', 'min_screen_amount', 'min_screen_unit', 'max_screen_amount', 'max_screen_unit', 'control_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('control_description', 'force_styles', 'control_selectors', 'min_screen_amount', 'min_screen_unit', 'max_screen_amount', 'max_screen_unit', 'control_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('control_description', 'force_styles', 'control_selectors', 'min_screen_amount', 'min_screen_unit', 'max_screen_amount', 'max_screen_unit', 'control_id');


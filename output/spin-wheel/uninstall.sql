-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swp_settings', 'bdt_biggopti_dismissals', 'swp_version');
DELETE FROM wp_options WHERE option_name LIKE 'swp_otp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_swp_wheel_mode', '_swp_wheel_type', '_swp_settings', '_swp_prizes', '_swp_styles', '_swp_form_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_swp_wheel_mode', '_swp_wheel_type', '_swp_settings', '_swp_prizes', '_swp_styles', '_swp_form_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_swp_wheel_mode', '_swp_wheel_type', '_swp_settings', '_swp_prizes', '_swp_styles', '_swp_form_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_swp_wheel_mode', '_swp_wheel_type', '_swp_settings', '_swp_prizes', '_swp_styles', '_swp_form_settings');


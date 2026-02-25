-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vbean_themelogin_override', 'vbean_themelogin_hideheading', 'vbean_themelogin_logo', 'vbean_themelogin_sitename', 'vbean_themelogin_css', 'vbean_themelogin_cssfiles', 'vbean_themelogin_cssfilesrelative', 'vbean_themelogin_background', 'vbean_themelogin_bglayout', 'vbean_themelogin_background_fixed', 'vbean_themelogin_bg_width', 'vbean_themelogin_bg_width_unit', 'vbean_themelogin_bg_height', 'vbean_themelogin_bg_height_unit', 'vbean_themelogin_maskit', 'vbean_themelogin_mask', 'vbean_themelogin_bg_colour', 'vbean_themelogin_text_colour');


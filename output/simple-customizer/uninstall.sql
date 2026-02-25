-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_customize_settings', 'simple_customize', 'simple_customize_category', 'simple_customize_fonts', 'simple_customize_google_fonts', 'simple-customize-version', 'simple-customize-css');
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_simple_customize_font', '_simple_customize_selector', '_simple_customize_attribute', '_simple_customize_default', '_simple_customize_category', '_simple_customize_theme');
DELETE FROM wp_usermeta WHERE meta_key IN ('_simple_customize_font', '_simple_customize_selector', '_simple_customize_attribute', '_simple_customize_default', '_simple_customize_category', '_simple_customize_theme');
DELETE FROM wp_termmeta WHERE meta_key IN ('_simple_customize_font', '_simple_customize_selector', '_simple_customize_attribute', '_simple_customize_default', '_simple_customize_category', '_simple_customize_theme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_simple_customize_font', '_simple_customize_selector', '_simple_customize_attribute', '_simple_customize_default', '_simple_customize_category', '_simple_customize_theme');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ga_profile', 'wp_headmaster_ga_choice', 'wp_headmaster_favicon', 'wp_headmaster_touch_icon', 'wp_headmaster_google_font', 'wp_headmaster_typekit', 'wp_headmaster_edgewebfonts', 'wp_headmaster_jquery_choice', 'wp_headmaster_jquery_google_version', 'wp_headmaster_respondjs', 'wphm_modernizr', 'inline_styles', 'wp_headmaster_meta_author_auto', 'wp_headmaster_format_detection');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_headmaster_js_value_key', 'wp_headmaster_css_value_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_headmaster_js_value_key', 'wp_headmaster_css_value_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_headmaster_js_value_key', 'wp_headmaster_css_value_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_headmaster_js_value_key', 'wp_headmaster_css_value_key');


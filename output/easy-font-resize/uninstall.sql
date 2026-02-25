-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpavefrsz_elements_array', 'wpavefrsz_main_selector', 'wpavefrsz_min_modifier', 'wpavefrsz_max_modifier', 'wpavefrsz_step_modifier', 'wpavefrsz_remember_font_size_sitewide', 'wpavefrsz_remember_font_size_enforce', 'wpavefrsz_include_selectors', 'wpavefrsz_exclude_selectors', 'wpavefrsz_position', 'wpavefrsz_show_on_mobile', 'wpavefrsz_hide_text', 'wpavefrsz_text', 'wpavefrsz_instructions_icon', 'wpavefrsz_use_wp_icons', 'wpavefrsz_main_offset_mobile', 'wpavefrsz_main_offset', 'wpavefrsz_theme', 'wpavefrsz_add_notranslate_class', 'wpavefrsz_text_decrease', 'wpavefrsz_text_increase', 'wpavefrsz_text_reset');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpavefrsz-wpave-ignore-notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpavefrsz-wpave-ignore-notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpavefrsz-wpave-ignore-notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpavefrsz-wpave-ignore-notice');


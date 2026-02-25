-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allow_kses_div', 'allow_kses_embed', 'allow_kses_iframe', 'allow_kses_img', 'allow_kses_map', 'allow_kses_object', 'allow_kses_param', 'allow_kses_pre');


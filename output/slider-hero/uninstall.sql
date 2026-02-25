-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ot_css_file_paths', 'sh_plugin_options', 'hero_latest_dpn', 'torus_notice_dismiss');
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_format_link_url', '_format_quote_source_url', 'sh_meta_box_bg_effect');
DELETE FROM wp_usermeta WHERE meta_key IN ('_format_link_url', '_format_quote_source_url', 'sh_meta_box_bg_effect');
DELETE FROM wp_termmeta WHERE meta_key IN ('_format_link_url', '_format_quote_source_url', 'sh_meta_box_bg_effect');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_format_link_url', '_format_quote_source_url', 'sh_meta_box_bg_effect');


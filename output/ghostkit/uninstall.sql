-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ghostkit_google_recaptcha_api_site_key', 'ghostkit_google_recaptcha_api_secret_key', 'ghostkit_settings', 'ghostkit_disabled_blocks', 'ghostkit_google_maps_api_key', 'ghostkit_custom_code', 'active_sitewide_plugins', 'ghostkit_typography', 'vpf_db_version', 'ghostkit_fonts_settings', 'ghostkit_customizer_fields', 'ghostkit_color_palette', 'gkt_deactivated_notice_id', 'ghostkit_google_fonts_list', 'ghostkit_remote_templates');
DELETE FROM wp_options WHERE option_name LIKE '%_state';
DELETE FROM wp_options WHERE option_name LIKE '%_time';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ghostkit_custom_css', 'ghostkit_custom_js_head', 'ghostkit_custom_js_foot', 'ghostkit_typography', '_wp_attachment_image_alt', 'ghostkit_customizer_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('ghostkit_custom_css', 'ghostkit_custom_js_head', 'ghostkit_custom_js_foot', 'ghostkit_typography', '_wp_attachment_image_alt', 'ghostkit_customizer_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('ghostkit_custom_css', 'ghostkit_custom_js_head', 'ghostkit_custom_js_foot', 'ghostkit_typography', '_wp_attachment_image_alt', 'ghostkit_customizer_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ghostkit_custom_css', 'ghostkit_custom_js_head', 'ghostkit_custom_js_foot', 'ghostkit_typography', '_wp_attachment_image_alt', 'ghostkit_customizer_options');


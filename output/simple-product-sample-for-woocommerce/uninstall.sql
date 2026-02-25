-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcisps_background_button_color', 'mcisps_text_button_color', 'mcisps_border_color', 'mcisps_border_width', 'mcisps_max_samples', 'mcisps_text_button', 'mcisps_text_button_max', 'mcisps_padding_top', 'mcisps_padding_bottom', 'mcisps_padding_left', 'mcisps_padding_right', 'mcisps_margin_top', 'mcisps_margin_bottom', 'mcisps_margin_left', 'mcisps_margin_right', 'mcisps_force_margin', 'mcisps_default_price', 'mcisps_font_size', 'mcisps_font_weight', 'mcisps_no_variations', 'mcisps_delete_all_data', 'mcisps_selected_categories', 'mcisps_auth_premium', 'mcisps_default_values', 'mcisps_hook_sample_btn', 'mcisps_version');
DELETE FROM wp_options WHERE option_name LIKE '%_lemon_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_lemon_instance_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sample_price', '_sample_active');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sample_price', '_sample_active');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sample_price', '_sample_active');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sample_price', '_sample_active');


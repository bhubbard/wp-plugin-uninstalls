-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aatg_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_aatg_previous_alt', '_aatg_generated_alt', '_sku', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskw_text_input', 'rank_math_focus_keyword');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_aatg_previous_alt', '_aatg_generated_alt', '_sku', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskw_text_input', 'rank_math_focus_keyword');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_aatg_previous_alt', '_aatg_generated_alt', '_sku', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskw_text_input', 'rank_math_focus_keyword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_aatg_previous_alt', '_aatg_generated_alt', '_sku', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskw_text_input', 'rank_math_focus_keyword');


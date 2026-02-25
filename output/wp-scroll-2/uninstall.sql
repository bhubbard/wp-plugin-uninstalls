-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hhg_scrol_to_top_image_src', 'hhg_scrol_to_top_enabled', 'hhg_scrol_to_top_time', 'hhg_scrol_to_top_position', 'hhg_scrol_to_top_padding');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lrwpp_keep_theme_chrome');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lrwpp_keep_theme_chrome', 'rabbit_css', '_elementor_edit_mode', '_elementor_data', '_lr_source_url', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('lrwpp_keep_theme_chrome', 'rabbit_css', '_elementor_edit_mode', '_elementor_data', '_lr_source_url', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('lrwpp_keep_theme_chrome', 'rabbit_css', '_elementor_edit_mode', '_elementor_data', '_lr_source_url', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lrwpp_keep_theme_chrome', 'rabbit_css', '_elementor_edit_mode', '_elementor_data', '_lr_source_url', '_wp_attachment_image_alt');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('capqsh_download_btn_bg_color', 'capqsh_download_btn_text_color', 'capqsh_enable_image_download', 'capqsh_enable_shortcode');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptiwmm_title', 'ptiwmm_banner_image', 'ptiwmm_headline', 'ptiwmm_message', 'ptiwmm_countdown_date', 'ptiwmm_footer_copyright', 'ptiwmm_enabled', 'ptiwmm_background_color', 'ptiwmm_text_color', 'ptiwmm_ga_code', 'ptiwmm_503_enabled', 'ptiwmm_selected_pages', 'ptiwmm_mode', 'ptiwmm_bypass_key', 'ptiwmm_selected_template', 'ptiwmm_uploaded_images');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone');


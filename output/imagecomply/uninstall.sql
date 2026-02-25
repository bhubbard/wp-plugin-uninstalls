-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imagecomply_license_key', 'imagecomply_generate_on_upload', 'imagecomply_medialibrary_show_status', 'imagecomply_medialibrary_show_alt_text', 'imagecomply_optimize_on_upload', 'imagecomply_alt_text_language', 'imagecomply_alt_text_keywords', 'imagecomply_alt_text_neg_keywords', 'imagecomply_alt_text_in_progress', 'imagecomply_optimization_in_progress');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('imagecomply', 'imagecomply_alt_text_status', '_wp_attachment_image_alt', '_aioseo_keywords', 'rank_math_focus_keyword', '_sq_keywords', 'wpml_media_processed', '_yoast_wpseo_focuskw');
DELETE FROM wp_usermeta WHERE meta_key IN ('imagecomply', 'imagecomply_alt_text_status', '_wp_attachment_image_alt', '_aioseo_keywords', 'rank_math_focus_keyword', '_sq_keywords', 'wpml_media_processed', '_yoast_wpseo_focuskw');
DELETE FROM wp_termmeta WHERE meta_key IN ('imagecomply', 'imagecomply_alt_text_status', '_wp_attachment_image_alt', '_aioseo_keywords', 'rank_math_focus_keyword', '_sq_keywords', 'wpml_media_processed', '_yoast_wpseo_focuskw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('imagecomply', 'imagecomply_alt_text_status', '_wp_attachment_image_alt', '_aioseo_keywords', 'rank_math_focus_keyword', '_sq_keywords', 'wpml_media_processed', '_yoast_wpseo_focuskw');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('soliloquy_upgrade', 'soliloquy-publishing-default', 'soliloquy_slide_position', 'soliloquy', 'soliloquy_lite_upgrade', 'soliloquy_shareasale_id', 'soliloquy_dynamic', 'soliloquy_default_slider', 'soliloquy_slide_view', 'hide_am_notices', 'soliloquy_upgrade_cpts', 'soliloquy_review', 'soliloquy_over_time', '_soliloquy_is_new_install', '_sol_cache_all');
DELETE FROM wp_options WHERE option_name LIKE '_sol_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_soliloquy_settings', '_wp_attachment_image_alt', '_soliloquy_image_link', '_sol_slider_data', '_sol_has_slider', '_sol_in_slider', '_sol_just_published', '_eg_in_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('_soliloquy_settings', '_wp_attachment_image_alt', '_soliloquy_image_link', '_sol_slider_data', '_sol_has_slider', '_sol_in_slider', '_sol_just_published', '_eg_in_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('_soliloquy_settings', '_wp_attachment_image_alt', '_soliloquy_image_link', '_sol_slider_data', '_sol_has_slider', '_sol_in_slider', '_sol_just_published', '_eg_in_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_soliloquy_settings', '_wp_attachment_image_alt', '_soliloquy_image_link', '_sol_slider_data', '_sol_has_slider', '_sol_in_slider', '_sol_just_published', '_eg_in_posts');


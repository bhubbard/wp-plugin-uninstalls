-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('full_adaptive', 'medium_crop', 'large_crop', 'medium_adaptive', 'large_adaptive', 'full_size_w', 'full_size_h', 'scissors_watermark_path', 'scissors_crop_defaultaspect', 'scissors_crop_useraspectx', 'scissors_crop_useraspecty', 'scissors_crop_defaultreir', 'scissors_watermark_size', 'scissors_watermark_size_relative', 'scissors_watermark_halign', 'scissors_watermark_valign', 'scissors_watermark_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('scissors_activation_notice_ignore', '_scissors_watermarking', '_scissors_watermarking_state', '_wp_attachment_metadata', '_scissors_custom_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('scissors_activation_notice_ignore', '_scissors_watermarking', '_scissors_watermarking_state', '_wp_attachment_metadata', '_scissors_custom_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('scissors_activation_notice_ignore', '_scissors_watermarking', '_scissors_watermarking_state', '_wp_attachment_metadata', '_scissors_custom_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('scissors_activation_notice_ignore', '_scissors_watermarking', '_scissors_watermarking_state', '_wp_attachment_metadata', '_scissors_custom_images');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iloveimg_images_to_restore', 'iloveimg_options_watermark', 'iloveimg_options_is_watermark_image', 'iloveimg_account_error', 'iloveimg_account', 'iloveimg_proyect', 'iloveimg_options_compress', 'iloveimg_user_is_migrated', 'iloveimgwm_bulk_success', 'iloveimgwm_bulk_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('iloveimg_status_watermark', 'iloveimg_watermark', 'iloveimg_status_compress', 'iloveimg_compress');
DELETE FROM wp_usermeta WHERE meta_key IN ('iloveimg_status_watermark', 'iloveimg_watermark', 'iloveimg_status_compress', 'iloveimg_compress');
DELETE FROM wp_termmeta WHERE meta_key IN ('iloveimg_status_watermark', 'iloveimg_watermark', 'iloveimg_status_compress', 'iloveimg_compress');
DELETE FROM wp_commentmeta WHERE meta_key IN ('iloveimg_status_watermark', 'iloveimg_watermark', 'iloveimg_status_compress', 'iloveimg_compress');


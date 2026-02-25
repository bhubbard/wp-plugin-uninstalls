-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('HAQTS_default_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('haqts_total_slide_details', 'haqts_total_images_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('haqts_total_slide_details', 'haqts_total_images_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('haqts_total_slide_details', 'haqts_total_images_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('haqts_total_slide_details', 'haqts_total_images_no');


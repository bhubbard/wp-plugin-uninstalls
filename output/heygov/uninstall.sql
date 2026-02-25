-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('heygov_id', 'heygov_features', 'heygov_btn_text', 'heygov_btn_position', 'heygov_location_required', 'heygov_banner', 'heygov_banner_bg_color', 'heygov_banner_img_big', 'heygov_banner_img_small', 'heygov_api_key', 'heygov-venues', 'forms');
DELETE FROM wp_options WHERE option_name LIKE 'venue-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('heygov_venues');
DELETE FROM wp_usermeta WHERE meta_key IN ('heygov_venues');
DELETE FROM wp_termmeta WHERE meta_key IN ('heygov_venues');
DELETE FROM wp_commentmeta WHERE meta_key IN ('heygov_venues');


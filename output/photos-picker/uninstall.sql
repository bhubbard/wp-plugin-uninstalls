-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_photos_picker_setting_browser_key', 'google_photos_picker_setting_client_id', 'google_photos_picker_setting_img_tag_type');


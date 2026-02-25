-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('setting_checkbox_popUpSlider', 'setting_popUpSlider_delay', 'setting_animacia', 'setting_current_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slide_sub_title', 'slide_date_OD', 'slide_date_DO', 'slide_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('slide_sub_title', 'slide_date_OD', 'slide_date_DO', 'slide_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('slide_sub_title', 'slide_date_OD', 'slide_date_DO', 'slide_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slide_sub_title', 'slide_date_OD', 'slide_date_DO', 'slide_url');


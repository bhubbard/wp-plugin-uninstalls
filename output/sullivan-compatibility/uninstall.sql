-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sullivan_slide_title', 'sullivan_slide_subtitle', 'sullivan_slide_button_text', 'sullivan_slide_button_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('sullivan_slide_title', 'sullivan_slide_subtitle', 'sullivan_slide_button_text', 'sullivan_slide_button_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('sullivan_slide_title', 'sullivan_slide_subtitle', 'sullivan_slide_button_text', 'sullivan_slide_button_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sullivan_slide_title', 'sullivan_slide_subtitle', 'sullivan_slide_button_text', 'sullivan_slide_button_url');


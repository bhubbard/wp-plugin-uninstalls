-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('evc_app_id', 'evc_button_text', 'evc_app_certificate', 'evc_video_wrapper_bg_color', 'evc_button_bg_color', 'evc_button_text_color', 'evc_mik_camera_bg_color', 'evc_mik_camera_text_color', 'evc_leave_call_bg_color', 'evc_leave_call_text_color');


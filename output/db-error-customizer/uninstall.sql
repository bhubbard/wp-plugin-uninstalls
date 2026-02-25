-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('template_select', 'template_bg_color', 'template_bg_img_attachment_id', 'template_bg_img_url', 'template_logo_attachment_id', 'template_logo_url', 'template_youtube_id', 'template_font_color', 'template_title', 'template_sub_title', 'email_enabled', 'email_freq', 'email_target', 'email_subject', 'email_msg', 'plugin_activate_notice_shown');


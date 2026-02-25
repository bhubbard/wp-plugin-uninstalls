-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acfw30_form_fields', 'acfw30_form_bg_spcolor', 'acfw30_form_font_spcolor', 'acfw30_form_btn_spcolor', 'acfw30_form_border_spcolor', 'acfw30_form_btn_text_spcolor', 'acfw30_form_placeholder_spcolor', 'acfw30_form_notice_email', 'acfw30_form_notice_title', 'acfw30_form_notice_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('acfw30_form_fields', 'acfw30_form_bg_spcolor', 'acfw30_form_font_spcolor', 'acfw30_form_btn_spcolor', 'acfw30_form_border_spcolor', 'acfw30_form_btn_text_spcolor', 'acfw30_form_placeholder_spcolor', 'acfw30_form_notice_email', 'acfw30_form_notice_title', 'acfw30_form_notice_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('acfw30_form_fields', 'acfw30_form_bg_spcolor', 'acfw30_form_font_spcolor', 'acfw30_form_btn_spcolor', 'acfw30_form_border_spcolor', 'acfw30_form_btn_text_spcolor', 'acfw30_form_placeholder_spcolor', 'acfw30_form_notice_email', 'acfw30_form_notice_title', 'acfw30_form_notice_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acfw30_form_fields', 'acfw30_form_bg_spcolor', 'acfw30_form_font_spcolor', 'acfw30_form_btn_spcolor', 'acfw30_form_border_spcolor', 'acfw30_form_btn_text_spcolor', 'acfw30_form_placeholder_spcolor', 'acfw30_form_notice_email', 'acfw30_form_notice_title', 'acfw30_form_notice_text');


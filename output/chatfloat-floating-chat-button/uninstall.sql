-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chatfloat_number', 'chatfloat_text', 'chatfloat_prefill_message', 'chatfloat_position', 'chatfloat_bg_color', 'chatfloat_text_color', 'chatfloat_display_desktop', 'chatfloat_display_mobile', 'chatfloat_darkmode', 'chatfloat_top_margin', 'chatfloat_bottom_margin', 'chatfloat_horizontal_margin');


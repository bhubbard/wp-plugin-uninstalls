-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('media_selector_attachment_id', 'select_form', 'left_textarea', 'form_background', 'main_background_color', 'leftarea_content_position', 'label_color', 'leftarea_text_color', 'leftarea_text_align', 'text_background', 'close_button_color', 'onload_or_click', 'click_selector');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('media_selector_attachment_id', 'scroll_enable', 'scroll_duration', 'scroll_offset', 'scroll_position', 'scroll_right_margin', 'scroll_bottom_margin', 'scroll_size', 'scroll_button_bgcolor', 'scroll_button_color', 'scroll_text', 'scroll_type', 'scroll_image');


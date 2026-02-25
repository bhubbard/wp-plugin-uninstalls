-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('card_header_color', 'faq_font_color', 'card_body_bgcolor', 'card_body_fontcolor', 'faq_section_width');


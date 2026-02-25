-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vacation_text_section_on', 'vacation_text_section_on_notice', 'vacation_text_section', 'vacation_text_section_to', 'vacation_text_section_notice');


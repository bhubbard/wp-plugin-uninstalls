-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ehf_support', 'ehf_text', 'ehf_farbe', 'ehf_anzeige', 'ehf_abstand', 'ehf_height', 'ehf_text_color', 'ehf_width', 'ehf_text_size', 'ehf_answer_size', 'ehf_answer_01', 'ehf_answer_02');


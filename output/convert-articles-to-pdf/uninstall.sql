-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('convert_to_pdf_paper_size', 'convert_to_pdf_orientation', 'convert_to_pdf_enable', 'convert_to_pdf_position', 'convert_to_pdf_include_image', 'convert_to_pdf_custom_css', 'convert_to_pdf_button_css', 'convert_to_pdf_button_label');


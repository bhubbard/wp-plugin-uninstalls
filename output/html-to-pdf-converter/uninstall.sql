-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('html2pdf_api_key', 'html2pdf_format', 'html2pdf_landscape', 'html2pdf_margin_top', 'html2pdf_margin_right', 'html2pdf_margin_bottom', 'html2pdf_margin_left', 'html2pdf_width', 'html2pdf_height');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('page_title', 'form_width', 'download_pdf_text', 'magmi_classic');


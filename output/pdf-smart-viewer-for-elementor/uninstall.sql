-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdfsmvif_default_zoom', 'pdfsmvif_enable_download', 'pdfsmvif_enable_fullscreen', 'pdfsmvif_enable_print', 'pdfsmvif_enable_zoom_controls', 'pdfsmvif_enable_page_info', 'pdfsmvif_default_height', 'pdfsmvif_enable_remote_pdfs', 'pdfsmvif_version_check');


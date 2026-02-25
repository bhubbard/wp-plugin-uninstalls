-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frm_pdf_view_free_template_id', 'frm_pdf_view_logo_attachment_id');


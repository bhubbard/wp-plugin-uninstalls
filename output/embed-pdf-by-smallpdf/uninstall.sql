-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EMBED_PDF_BY_SMALLPDF_VERSION');


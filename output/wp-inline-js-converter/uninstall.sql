-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wijc_active', 'wijc_tofile', 'wijc_tofile_css', 'wijc_compress', 'wijc_compress_css', 'wijc_compress_html');


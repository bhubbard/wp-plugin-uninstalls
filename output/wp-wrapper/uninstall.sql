-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nabwrap_page', 'nabwrap_addlink', 'nabwrap_url', 'nabwrap_width', 'nabwrap_height', 'nabwrap_border', 'nabwrap_scroll');


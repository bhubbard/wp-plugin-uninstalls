-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eazyHTTPhead_checkbox_frame', 'eazyHTTPhead_checkbox_xss', 'eazyHTTPhead_checkbox_nosniff');


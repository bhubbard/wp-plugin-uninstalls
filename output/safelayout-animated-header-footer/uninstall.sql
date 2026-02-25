-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('safelayout_header_footer_options_rate', 'safelayout_header_footer_options');


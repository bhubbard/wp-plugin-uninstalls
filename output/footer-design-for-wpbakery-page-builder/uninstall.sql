-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmp_selected_footer', 'wpmp_footer_style', 'wpmp-selected-footer', 'wpmp-footer-style');


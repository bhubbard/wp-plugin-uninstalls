-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpls_selected_design', 'wpls_logo_url');
DELETE FROM wp_options WHERE option_name LIKE 'wpls_%';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwp-loginizer-custom-css', 'dwp-loginizer-field-options');


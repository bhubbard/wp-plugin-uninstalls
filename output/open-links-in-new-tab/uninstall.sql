-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('olint_open_external_link_in_new_tab', 'olint_open_internal_link_in_new_tab');


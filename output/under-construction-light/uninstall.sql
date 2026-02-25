-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ucl_phpespeto_field', 'ucl_phpespeto_field2');


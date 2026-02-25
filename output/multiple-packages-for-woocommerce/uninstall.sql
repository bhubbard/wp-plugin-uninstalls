-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multi_packages_type', 'multi_packages_enabled', 'multi_packages_free_shipping');


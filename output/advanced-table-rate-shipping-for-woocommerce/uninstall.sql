-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('test_option', 'acotrs_activation_license_key', 'acotrs_activation_license_status', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('priority');
DELETE FROM wp_usermeta WHERE meta_key IN ('priority');
DELETE FROM wp_termmeta WHERE meta_key IN ('priority');
DELETE FROM wp_commentmeta WHERE meta_key IN ('priority');


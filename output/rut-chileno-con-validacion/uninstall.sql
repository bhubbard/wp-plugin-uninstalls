-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_chilean_bundle_configuration_options', 'wc_chilean_bundle_about_us_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Rut');
DELETE FROM wp_usermeta WHERE meta_key IN ('Rut');
DELETE FROM wp_termmeta WHERE meta_key IN ('Rut');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Rut');


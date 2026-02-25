-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rr_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('disable_rocket_reader', 'enable_rocket_reader');
DELETE FROM wp_usermeta WHERE meta_key IN ('disable_rocket_reader', 'enable_rocket_reader');
DELETE FROM wp_termmeta WHERE meta_key IN ('disable_rocket_reader', 'enable_rocket_reader');
DELETE FROM wp_commentmeta WHERE meta_key IN ('disable_rocket_reader', 'enable_rocket_reader');


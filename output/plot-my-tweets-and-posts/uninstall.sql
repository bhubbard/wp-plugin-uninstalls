-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmpat_options', 'pmpat_hash');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('location', 'lat', 'lon', 'show');
DELETE FROM wp_usermeta WHERE meta_key IN ('location', 'lat', 'lon', 'show');
DELETE FROM wp_termmeta WHERE meta_key IN ('location', 'lat', 'lon', 'show');
DELETE FROM wp_commentmeta WHERE meta_key IN ('location', 'lat', 'lon', 'show');


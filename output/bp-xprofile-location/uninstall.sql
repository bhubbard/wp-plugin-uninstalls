-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pp_gapikey');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'geocode_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'geocode_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'geocode_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'geocode_%';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apextmail', 'apext', 'apext_ver');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pebr_day_limit');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pebr_day_limit');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pebr_day_limit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pebr_day_limit');


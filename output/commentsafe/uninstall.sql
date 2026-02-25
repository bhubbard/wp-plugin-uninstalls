-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpcar_maxtime_limit', '_wpcar_autotime_limit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpcar_autotime_limit', '_wpcar_maxtime_limit');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpcar_autotime_limit', '_wpcar_maxtime_limit');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpcar_autotime_limit', '_wpcar_maxtime_limit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpcar_autotime_limit', '_wpcar_maxtime_limit');


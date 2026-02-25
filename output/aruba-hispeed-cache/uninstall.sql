-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aruba_hispeed_cache_options', 'ahsc_do_cache_warmer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ping_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ping_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ping_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ping_status');


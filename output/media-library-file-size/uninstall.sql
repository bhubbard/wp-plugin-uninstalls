-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss88_mlfs_analyze_cache_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('SS88MLFS', 'SS88MLFSV');
DELETE FROM wp_usermeta WHERE meta_key IN ('SS88MLFS', 'SS88MLFSV');
DELETE FROM wp_termmeta WHERE meta_key IN ('SS88MLFS', 'SS88MLFSV');
DELETE FROM wp_commentmeta WHERE meta_key IN ('SS88MLFS', 'SS88MLFSV');


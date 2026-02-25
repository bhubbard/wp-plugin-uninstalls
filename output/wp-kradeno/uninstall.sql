-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpkr_exclude_sites', 'wpkr_googlecalls', 'wpkr_ratinglimit', 'wpkr_lastcheck', 'wpkr_recheckdays', 'wpkr_ignoreposts', 'wpkr_db_version', 'wpkr_token', 'wpkr_recheckperiod');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpkr_lastchecked');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpkr_lastchecked');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpkr_lastchecked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpkr_lastchecked');


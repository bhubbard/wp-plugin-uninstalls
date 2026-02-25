-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp2048_options', 'wp2048_custom', 'wp2048_highscore', 'wp2048_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp2048_score');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp2048_score');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp2048_score');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp2048_score');


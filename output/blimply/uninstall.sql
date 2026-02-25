-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('urban_airship', 'blimply_sounds');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blimply_push_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('blimply_push_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('blimply_push_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blimply_push_sent');


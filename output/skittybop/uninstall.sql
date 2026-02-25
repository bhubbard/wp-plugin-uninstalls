-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('skittybop_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('skittybop_last_seen');
DELETE FROM wp_usermeta WHERE meta_key IN ('skittybop_last_seen');
DELETE FROM wp_termmeta WHERE meta_key IN ('skittybop_last_seen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('skittybop_last_seen');


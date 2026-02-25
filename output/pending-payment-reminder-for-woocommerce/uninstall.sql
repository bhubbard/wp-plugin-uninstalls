-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prfw_version', 'prfw_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_reminder');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_reminder');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_reminder');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_reminder');


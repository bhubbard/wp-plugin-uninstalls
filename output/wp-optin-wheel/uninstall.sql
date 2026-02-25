-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wof-lite-dev-version', 'wof_log_name', 'mb-wof-lite-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('options');
DELETE FROM wp_usermeta WHERE meta_key IN ('options');
DELETE FROM wp_termmeta WHERE meta_key IN ('options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('options');


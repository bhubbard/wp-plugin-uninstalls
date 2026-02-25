-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post-worktime-logger-options', 'post-worktime-logger-last-ping-timestamp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post-worktime');
DELETE FROM wp_usermeta WHERE meta_key IN ('post-worktime');
DELETE FROM wp_termmeta WHERE meta_key IN ('post-worktime');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post-worktime');


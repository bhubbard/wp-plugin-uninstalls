-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('array_key', 'new_option_name', 'some_other_option', 'option_etc', 'feed_settings', 'feed_migrated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('api_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('api_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('api_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('api_key');


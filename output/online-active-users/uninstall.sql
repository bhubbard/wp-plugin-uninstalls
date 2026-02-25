-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpoau_transient_keys', 'users_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'last_seen');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'last_seen');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'last_seen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'last_seen');


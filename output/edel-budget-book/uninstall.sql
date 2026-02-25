-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ebb-type-lists', 'ebb-logout-message', 'ebb-disable-message', 'ebb-basic-color', 'ebb-public-select');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ebb-disable_user_flag');
DELETE FROM wp_usermeta WHERE meta_key IN ('ebb-disable_user_flag');
DELETE FROM wp_termmeta WHERE meta_key IN ('ebb-disable_user_flag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ebb-disable_user_flag');


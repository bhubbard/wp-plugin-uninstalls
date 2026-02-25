-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usrtk_can_login', '_user_switch_temp_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('can_login', 'last_login', 'when_last_login', '_um_last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('can_login', 'last_login', 'when_last_login', '_um_last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('can_login', 'last_login', 'when_last_login', '_um_last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('can_login', 'last_login', 'when_last_login', '_um_last_login');


-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wll_user_ip_address', 'when_last_login', 'when_last_login_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('wll_user_ip_address', 'when_last_login', 'when_last_login_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('wll_user_ip_address', 'when_last_login', 'when_last_login_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wll_user_ip_address', 'when_last_login', 'when_last_login_count');


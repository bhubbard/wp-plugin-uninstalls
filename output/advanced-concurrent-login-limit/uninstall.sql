-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gen_user_cc_login_limit', '_gen_is_user_idle');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gen_user_cc_login_limit', '_gen_is_user_idle');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gen_user_cc_login_limit', '_gen_is_user_idle');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gen_user_cc_login_limit', '_gen_is_user_idle');


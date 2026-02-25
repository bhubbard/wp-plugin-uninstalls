-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_emailchef_list', 'ecwc_last_run_version', 'emailchef-admin-notice', 'ecwc_authkey', 'ecwc_lists');
DELETE FROM wp_options WHERE option_name LIKE 'wc_emailchef_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'wc_last_active');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'wc_last_active');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'wc_last_active');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'wc_last_active');


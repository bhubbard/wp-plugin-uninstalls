-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('watchfulSettings', 'watchful_last_login_time', 'watchful_last_login_error_counter', 'watchfulDoActivationRedirect', 'watchfulMessage', 'update_themes', 'signatures', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('watchful_sso_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('watchful_sso_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('watchful_sso_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('watchful_sso_id');


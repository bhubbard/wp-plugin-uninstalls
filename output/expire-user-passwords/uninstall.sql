-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('user_expass_settings', 'expass_activated_on');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_expass_password_reset');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_expass_password_reset');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_expass_password_reset');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_expass_password_reset');


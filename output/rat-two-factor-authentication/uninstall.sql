-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rat_2fa_global_enabled', 'rat_2fa_force_users', 'rat_2fa_user_roles');
DELETE FROM wp_options WHERE option_name LIKE 'rat_2fa_debug_otp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rat_2fa_enabled', 'rat_2fa_otp_time', 'rat_2fa_otp', 'rat_2fa_debug_otp');
DELETE FROM wp_usermeta WHERE meta_key IN ('rat_2fa_enabled', 'rat_2fa_otp_time', 'rat_2fa_otp', 'rat_2fa_debug_otp');
DELETE FROM wp_termmeta WHERE meta_key IN ('rat_2fa_enabled', 'rat_2fa_otp_time', 'rat_2fa_otp', 'rat_2fa_debug_otp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rat_2fa_enabled', 'rat_2fa_otp_time', 'rat_2fa_otp', 'rat_2fa_debug_otp');


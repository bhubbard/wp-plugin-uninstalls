-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('headlesskey_db_version', 'jetpack_protect_active', 'jetpack_offline_mode', 'wpcom_public_coming_soon', 'jetpack_is_single_user');
DELETE FROM wp_options WHERE option_name LIKE 'headlesskey_otp_%';
DELETE FROM wp_options WHERE option_name LIKE '%_locked';


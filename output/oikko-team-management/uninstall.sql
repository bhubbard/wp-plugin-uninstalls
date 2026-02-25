-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oikkotm_general_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('oikkotm_user_photo', 'first_name', 'last_name', 'user_documents', 'phone_number', 'oikkotm_user_department', 'oikkotm_user_designation', 'oikkotm_user_shift');
DELETE FROM wp_usermeta WHERE meta_key IN ('oikkotm_user_photo', 'first_name', 'last_name', 'user_documents', 'phone_number', 'oikkotm_user_department', 'oikkotm_user_designation', 'oikkotm_user_shift');
DELETE FROM wp_termmeta WHERE meta_key IN ('oikkotm_user_photo', 'first_name', 'last_name', 'user_documents', 'phone_number', 'oikkotm_user_department', 'oikkotm_user_designation', 'oikkotm_user_shift');
DELETE FROM wp_commentmeta WHERE meta_key IN ('oikkotm_user_photo', 'first_name', 'last_name', 'user_documents', 'phone_number', 'oikkotm_user_department', 'oikkotm_user_designation', 'oikkotm_user_shift');


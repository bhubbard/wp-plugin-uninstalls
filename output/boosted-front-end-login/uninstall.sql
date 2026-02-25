-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boosted_frontend_login_lost_password_page_id', 'boosted_frontend_login_registration_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'boosted_frontend_login_login_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'boosted_frontend_login_lost_password_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'boosted_frontend_login_lost_password_message_%';
DELETE FROM wp_options WHERE option_name LIKE 'boosted_frontend_login_registration_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'boosted_frontend_login_registration_message_%';
DELETE FROM wp_options WHERE option_name LIKE 'boosted_frontend_login_verification_message_%';
DELETE FROM wp_options WHERE option_name LIKE 'boosted_frontend_login_verification_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('email_verification_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('email_verification_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('email_verification_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('email_verification_key');


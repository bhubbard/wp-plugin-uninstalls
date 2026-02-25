-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('name_of_unit', 'bonus_for_referrer', 'bonus_for_new_user', 'email_service', 'login_service', 'password_service', 'name_sender', 'course_of_units', 'telegram_channel_url', 'facebook_channel_url', 'twitter_channel_url', 'twitter_channel_title', 'phone_user_meta_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('counter', 'Verified_phone_by_sms', 'units', 'user_registration_facebook_account', 'user_registration_twitter_account', 'user_registration_telegram_account', 'user_registration_number_box_1529446202', 'sms_secret_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('counter', 'Verified_phone_by_sms', 'units', 'user_registration_facebook_account', 'user_registration_twitter_account', 'user_registration_telegram_account', 'user_registration_number_box_1529446202', 'sms_secret_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('counter', 'Verified_phone_by_sms', 'units', 'user_registration_facebook_account', 'user_registration_twitter_account', 'user_registration_telegram_account', 'user_registration_number_box_1529446202', 'sms_secret_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('counter', 'Verified_phone_by_sms', 'units', 'user_registration_facebook_account', 'user_registration_twitter_account', 'user_registration_telegram_account', 'user_registration_number_box_1529446202', 'sms_secret_key');


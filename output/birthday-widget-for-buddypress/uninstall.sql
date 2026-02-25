-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_birthdays_settings', 'bb_birthdays_default_field', 'bp_birthdays_emails_installed', 'bp_birthdays_last_check_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('activation_key', 'nickname', 'first_name', 'bb_birthday_wished_users');
DELETE FROM wp_usermeta WHERE meta_key IN ('activation_key', 'nickname', 'first_name', 'bb_birthday_wished_users');
DELETE FROM wp_termmeta WHERE meta_key IN ('activation_key', 'nickname', 'first_name', 'bb_birthday_wished_users');
DELETE FROM wp_commentmeta WHERE meta_key IN ('activation_key', 'nickname', 'first_name', 'bb_birthday_wished_users');


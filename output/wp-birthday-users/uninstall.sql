-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('birthdayusers_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('birthday_date', 'nickname', 'birthday_share', 'birthday_age', 'birthday_change', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('birthday_date', 'nickname', 'birthday_share', 'birthday_age', 'birthday_change', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('birthday_date', 'nickname', 'birthday_share', 'birthday_age', 'birthday_change', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('birthday_date', 'nickname', 'birthday_share', 'birthday_age', 'birthday_change', 'first_name', 'last_name');


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%options';
DELETE FROM wp_options WHERE option_name LIKE '%info';
DELETE FROM wp_options WHERE option_name LIKE '%_custom';
DELETE FROM wp_options WHERE option_name LIKE '%lang_en';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_login';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_last_seen';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_last_seen';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_last_seen';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_last_seen';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordplurk_template', 'wordplurk_suapi_user', 'wordplurk_suapi_key', 'wordplurk_login', 'wordplurk_shorturl_en', 'wordplurk_qualifier', 'wordplurk_language_set', 'wordplurk_Plurk2tw_en', 'wordplurk_version', 'wordplurk_username', 'wordplurk_password', 'wordplurk_apikey', 'wordplurk_cookie_exp_time', 'wordplurk_cookie', 'wordplurk_cmrt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('has_been_plurked', 'wordplurk_plurkornot', 'plurk_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('has_been_plurked', 'wordplurk_plurkornot', 'plurk_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('has_been_plurked', 'wordplurk_plurkornot', 'plurk_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('has_been_plurked', 'wordplurk_plurkornot', 'plurk_id');


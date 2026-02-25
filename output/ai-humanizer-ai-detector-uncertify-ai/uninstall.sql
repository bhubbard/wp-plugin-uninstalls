-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uncertifyai_settings', 'uncertifyai_user_data', 'uncertifyai_usage_data');
DELETE FROM wp_options WHERE option_name LIKE 'uncertifyai_recheck_result_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_uncertifyai_ai_check');
DELETE FROM wp_usermeta WHERE meta_key IN ('_uncertifyai_ai_check');
DELETE FROM wp_termmeta WHERE meta_key IN ('_uncertifyai_ai_check');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_uncertifyai_ai_check');


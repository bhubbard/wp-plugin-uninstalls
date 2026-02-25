-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%keywords';
DELETE FROM wp_options WHERE option_name LIKE '%description';
DELETE FROM wp_options WHERE option_name LIKE '%google_verification';
DELETE FROM wp_options WHERE option_name LIKE '%bing_verification';
DELETE FROM wp_options WHERE option_name LIKE '%alexa_verification';
DELETE FROM wp_options WHERE option_name LIKE '%google_analytics';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%use_global_settings';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%use_global_settings';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%use_global_settings';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%use_global_settings';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%meta_keywords';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%meta_keywords';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%meta_keywords';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%meta_keywords';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%meta_description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%meta_description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%meta_description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%meta_description';


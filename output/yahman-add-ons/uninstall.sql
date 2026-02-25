-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yahman_addons', 'yahman_addons_version', 'yahman_addons_external_cache', 'yahman_addons_count');
DELETE FROM wp_options WHERE option_name LIKE 'ya_amp_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'ya_faster_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ya_description', 'yahman_addons_delete_function_notice_dismiss', 'yahman_addons_social_user_profile');
DELETE FROM wp_usermeta WHERE meta_key IN ('ya_description', 'yahman_addons_delete_function_notice_dismiss', 'yahman_addons_social_user_profile');
DELETE FROM wp_termmeta WHERE meta_key IN ('ya_description', 'yahman_addons_delete_function_notice_dismiss', 'yahman_addons_social_user_profile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ya_description', 'yahman_addons_delete_function_notice_dismiss', 'yahman_addons_social_user_profile');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_yahman_addons_pv_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_yahman_addons_pv_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_yahman_addons_pv_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yahman_addons_pv_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_yahman_addons_coverage_period_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_yahman_addons_coverage_period_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_yahman_addons_coverage_period_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yahman_addons_coverage_period_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%all';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%all';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%all';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%all';


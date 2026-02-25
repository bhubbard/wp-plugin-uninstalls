-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssc_cache_products', 'ssc_plugin_version', 'ssc_valid_api_keys');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ssc_groups', '_ssc_no_access_redirect_post_id', '_ssc_no_access_redirect', '_ssc_new_user', '_ssc_user_groups', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ssc_groups', '_ssc_no_access_redirect_post_id', '_ssc_no_access_redirect', '_ssc_new_user', '_ssc_user_groups', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ssc_groups', '_ssc_no_access_redirect_post_id', '_ssc_no_access_redirect', '_ssc_new_user', '_ssc_user_groups', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ssc_groups', '_ssc_no_access_redirect_post_id', '_ssc_no_access_redirect', '_ssc_new_user', '_ssc_user_groups', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_to_access';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_to_access';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_to_access';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_to_access';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%date_until_to_access';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%date_until_to_access';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%date_until_to_access';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date_until_to_access';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%days_to_access';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%days_to_access';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%days_to_access';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%days_to_access';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%expire_days_after_registration';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%expire_days_after_registration';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%expire_days_after_registration';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%expire_days_after_registration';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%email_user_can_access';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%email_user_can_access';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%email_user_can_access';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%email_user_can_access';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%email_subject_user_can_access';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%email_subject_user_can_access';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%email_subject_user_can_access';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%email_subject_user_can_access';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ssc_group_subscription_valid_to_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ssc_group_subscription_valid_to_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ssc_group_subscription_valid_to_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ssc_group_subscription_valid_to_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ssc_group_subscription_date_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ssc_group_subscription_date_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ssc_group_subscription_date_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ssc_group_subscription_date_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_groups';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_groups';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_groups';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_groups';


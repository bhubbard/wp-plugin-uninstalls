-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cms_watchman_current_cms', 'cms_watchman_access_token', 'cms_watchman_client_id', 'cms_watchman_client_secret', 'cms_watchman_new_update', 'cms_watchman_welcom_display');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cms_watchman_company_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cms_watchman_company_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cms_watchman_company_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cms_watchman_company_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cms_watchman_company_token_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cms_watchman_company_token_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cms_watchman_company_token_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cms_watchman_company_token_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cms_watchman_auth_token_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cms_watchman_auth_token_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cms_watchman_auth_token_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cms_watchman_auth_token_%';


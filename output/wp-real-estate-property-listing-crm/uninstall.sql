-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api_keys_changed', 'plugin-settings', 'save-search', 'success-unsubscribe', 'fail-unsubscribe', 'md_flexmls_api_key', 'md_flexmls_api_secret', 'md_greatschool_api_key', 'broker_id', 'property_data_feed', 'md_old_plugin-settings', 'MWP_ACTIVATE');
DELETE FROM wp_options WHERE option_name LIKE 'error-signup-%';
DELETE FROM wp_options WHERE option_name LIKE 'log_crm_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lead-data', 'facebook-auth', 'phone_num', 'page_breadcrumb', 'page_title', 'location_id', 'location_data', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('lead-data', 'facebook-auth', 'phone_num', 'page_breadcrumb', 'page_title', 'location_id', 'location_data', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('lead-data', 'facebook-auth', 'phone_num', 'page_breadcrumb', 'page_title', 'location_id', 'location_data', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lead-data', 'facebook-auth', 'phone_num', 'page_breadcrumb', 'page_title', 'location_id', 'location_data', 'first_name', 'last_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'save-property-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'save-property-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'save-property-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'save-property-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'xout-property-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'xout-property-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'xout-property-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'xout-property-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'save-search-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'save-search-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'save-search-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'save-search-%';


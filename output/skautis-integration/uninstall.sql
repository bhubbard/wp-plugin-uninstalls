-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('skautis_rewrite_rules_need_to_flush', 'skautis_integration_login_page_url', 'skautis_integration_appid_type', 'skautis_integration_appid_prod', 'skautis_integration_appid_test', 'skautis_integration_activated_modules', 'skautis-integration_login_page_url', 'skautis-integration_allowUsersDisconnectFromSkautis', 'skautis-integration_checkUserPrivilegesIfLoginBySkautis', 'skautis-integration_modules_register_defaultwpRole', 'skautis-integration_modules_register_notifications', 'skautis-integration_modules_register_rules', 'skautis-integration_modules_shortcodes_visibilityMode', 'skautis-integration_modules_visibility_postTypes', 'skautis-integration_modules_visibility_visibilityMode', 'skautis-integration_modules_visibility_includeChildren');
DELETE FROM wp_options WHERE option_name LIKE '%_login_page_url';
DELETE FROM wp_options WHERE option_name LIKE '%_allowUsersDisconnectFromSkautis';
DELETE FROM wp_options WHERE option_name LIKE '%_checkUserPrivilegesIfLoginBySkautis';
DELETE FROM wp_options WHERE option_name LIKE '%_modules_register_defaultwpRole';
DELETE FROM wp_options WHERE option_name LIKE '%_modules_register_rules';
DELETE FROM wp_options WHERE option_name LIKE '%_modules_register_notifications';
DELETE FROM wp_options WHERE option_name LIKE '%_modules_shortcodes_visibilityMode';
DELETE FROM wp_options WHERE option_name LIKE '%_modules_visibility_includeChildren';
DELETE FROM wp_options WHERE option_name LIKE '%_modules_visibility_visibilityMode';
DELETE FROM wp_options WHERE option_name LIKE '%_modules_visibility_postTypes';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('skautisUserId_prod', 'skautisUserId_test');
DELETE FROM wp_usermeta WHERE meta_key IN ('skautisUserId_prod', 'skautisUserId_test');
DELETE FROM wp_termmeta WHERE meta_key IN ('skautisUserId_prod', 'skautisUserId_test');
DELETE FROM wp_commentmeta WHERE meta_key IN ('skautisUserId_prod', 'skautisUserId_test');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'skautisUserId_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'skautisUserId_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'skautisUserId_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'skautisUserId_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rules';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rules';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rules';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rules';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rules_includeChildren';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rules_includeChildren';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rules_includeChildren';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rules_includeChildren';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rules_visibilityMode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rules_visibilityMode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rules_visibilityMode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rules_visibilityMode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rules_data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rules_data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rules_data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rules_data';


-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%-client-id';
DELETE FROM wp_options WHERE option_name LIKE '%-secret-id';
DELETE FROM wp_options WHERE option_name LIKE '%-scopes';
DELETE FROM wp_options WHERE option_name LIKE '%-own-app';
DELETE FROM wp_options WHERE option_name LIKE '%-authorised';
DELETE FROM wp_options WHERE option_name LIKE '%-crm-active';
DELETE FROM wp_options WHERE option_name LIKE '%-cf7-setting';
DELETE FROM wp_options WHERE option_name LIKE '%-cf7-onboarding-data-sent';
DELETE FROM wp_options WHERE option_name LIKE '%-cf7-onboarding-data-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-token-data';
DELETE FROM wp_options WHERE option_name LIKE '%-user-info';
DELETE FROM wp_options WHERE option_name LIKE '%-crm-connected';
DELETE FROM wp_options WHERE option_name LIKE '%-cf7-synced-forms-count';
DELETE FROM wp_options WHERE option_name LIKE '%-cf7-settings-response';
DELETE FROM wp_options WHERE option_name LIKE '%_cf7_pro_version_incompatible';
DELETE FROM wp_options WHERE option_name LIKE '%_objects_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-primary-field';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-primary-field';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-primary-field';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-primary-field';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-object';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-object';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-object';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-object';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-form';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-form';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-form';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-form';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-mapping-data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-mapping-data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-mapping-data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-mapping-data';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-enable-filters';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-enable-filters';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-enable-filters';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-enable-filters';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-condtion-field';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-condtion-field';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-condtion-field';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-condtion-field';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-cf7-crm-fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-cf7-crm-fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-cf7-crm-fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-cf7-crm-fields';


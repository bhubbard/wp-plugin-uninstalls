-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onboarding-data-sent', 'onboarding-data-skipped', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%-client-id';
DELETE FROM wp_options WHERE option_name LIKE '%-secret-id';
DELETE FROM wp_options WHERE option_name LIKE '%-scopes';
DELETE FROM wp_options WHERE option_name LIKE '%-own-app';
DELETE FROM wp_options WHERE option_name LIKE '%-authorised';
DELETE FROM wp_options WHERE option_name LIKE '%-crm-active';
DELETE FROM wp_options WHERE option_name LIKE '%-gf-setting';
DELETE FROM wp_options WHERE option_name LIKE '%-token-data';
DELETE FROM wp_options WHERE option_name LIKE '%-user-info';
DELETE FROM wp_options WHERE option_name LIKE '%-crm-connected';
DELETE FROM wp_options WHERE option_name LIKE '%-gf-synced-forms-count';
DELETE FROM wp_options WHERE option_name LIKE '%-gf-settings-response';
DELETE FROM wp_options WHERE option_name LIKE '%_objects_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-primary-field';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-primary-field';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-primary-field';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-primary-field';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-object';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-object';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-object';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-object';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-form';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-form';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-form';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-form';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-mapping-data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-mapping-data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-mapping-data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-mapping-data';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-enable-filters';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-enable-filters';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-enable-filters';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-enable-filters';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-condtion-field';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-condtion-field';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-condtion-field';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-condtion-field';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-gf-crm-fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-gf-crm-fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-gf-crm-fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-gf-crm-fields';


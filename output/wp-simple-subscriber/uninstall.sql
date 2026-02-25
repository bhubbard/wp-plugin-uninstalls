-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPSS_plugin_options');
DELETE FROM wp_options WHERE option_name LIKE '%invalid_email_address';
DELETE FROM wp_options WHERE option_name LIKE '%duplicate_email_address';
DELETE FROM wp_options WHERE option_name LIKE '%successfully_added';
DELETE FROM wp_options WHERE option_name LIKE '%error_added';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%ip_address';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%ip_address';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%ip_address';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%ip_address';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%firstname';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%firstname';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%firstname';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%firstname';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%lastname';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%lastname';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%lastname';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lastname';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_name';


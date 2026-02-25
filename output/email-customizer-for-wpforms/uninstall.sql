-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ninja_forms_addons_feed', 'yeemail_wpforms_setup', 'yeekit_addons');
DELETE FROM wp_options WHERE option_name LIKE '_redmuber_item_%';
DELETE FROM wp_options WHERE option_name LIKE 'yeekit_addons_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yeemail_wpforms', '_mail_template', 'data_email', '_mail_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yeemail_wpforms', '_mail_template', 'data_email', '_mail_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yeemail_wpforms', '_mail_template', 'data_email', '_mail_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yeemail_wpforms', '_mail_template', 'data_email', '_mail_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';


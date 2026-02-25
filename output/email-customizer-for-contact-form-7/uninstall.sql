-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yeemail_contact_form_7_setup', 'ninja_forms_addons_feed', 'yeekit_addons');
DELETE FROM wp_options WHERE option_name LIKE '_redmuber_item_%';
DELETE FROM wp_options WHERE option_name LIKE 'yeekit_addons_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yeemail_contact_form_7', '_email2_template', '_yeemail_template', '_mail_template', 'data_email', '_mail_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yeemail_contact_form_7', '_email2_template', '_yeemail_template', '_mail_template', 'data_email', '_mail_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yeemail_contact_form_7', '_email2_template', '_yeemail_template', '_mail_template', 'data_email', '_mail_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yeemail_contact_form_7', '_email2_template', '_yeemail_template', '_mail_template', 'data_email', '_mail_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_template';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_template';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_template';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_template';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%';


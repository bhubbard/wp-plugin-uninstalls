-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csds_userRegAide_Options', 'csds_uraFieldOptions', 'csds_userRegAide_registrationFields', 'csds_userRegAide_support', 'csds_display_link', 'csds_display_name', 'csds_userRegAide_dbVersion', 'csds_userRegAide_knownFields', 'csds_userRegAide_NewFields', 'csds_userRegAideFields', 'csds_userRegAide_fieldOrder', 'csds_ura_optionalFields', 'widget_pages', 'csds_userRegAide_newField', 'csds_userRegAide', 'csds_userRegAide_SecurityQuestions');
DELETE FROM wp_options WHERE option_name LIKE 'new_user_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('approval_status', 'email_verification', 'approved_email', 'email_status', 'my-xwrd-email', 'emails_sent', 'password_set', 'wp_capabilities', 'admin_notification', 'admin_email_verified_notification', 'user_email_verified_notification', 'pw_user_status', 'ura_users_column_defaults', 'verified', 'default_display_name', 'lp_email', 'manageuserscolumnshidden', 'new_user_agreed', 'ura_sq_alert_notice_ignore', 'security_question_1', 'security_question_2', 'security_question_3');
DELETE FROM wp_usermeta WHERE meta_key IN ('approval_status', 'email_verification', 'approved_email', 'email_status', 'my-xwrd-email', 'emails_sent', 'password_set', 'wp_capabilities', 'admin_notification', 'admin_email_verified_notification', 'user_email_verified_notification', 'pw_user_status', 'ura_users_column_defaults', 'verified', 'default_display_name', 'lp_email', 'manageuserscolumnshidden', 'new_user_agreed', 'ura_sq_alert_notice_ignore', 'security_question_1', 'security_question_2', 'security_question_3');
DELETE FROM wp_termmeta WHERE meta_key IN ('approval_status', 'email_verification', 'approved_email', 'email_status', 'my-xwrd-email', 'emails_sent', 'password_set', 'wp_capabilities', 'admin_notification', 'admin_email_verified_notification', 'user_email_verified_notification', 'pw_user_status', 'ura_users_column_defaults', 'verified', 'default_display_name', 'lp_email', 'manageuserscolumnshidden', 'new_user_agreed', 'ura_sq_alert_notice_ignore', 'security_question_1', 'security_question_2', 'security_question_3');
DELETE FROM wp_commentmeta WHERE meta_key IN ('approval_status', 'email_verification', 'approved_email', 'email_status', 'my-xwrd-email', 'emails_sent', 'password_set', 'wp_capabilities', 'admin_notification', 'admin_email_verified_notification', 'user_email_verified_notification', 'pw_user_status', 'ura_users_column_defaults', 'verified', 'default_display_name', 'lp_email', 'manageuserscolumnshidden', 'new_user_agreed', 'ura_sq_alert_notice_ignore', 'security_question_1', 'security_question_2', 'security_question_3');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_level';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_level';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_level';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_level';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%level';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%level';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%level';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%level';


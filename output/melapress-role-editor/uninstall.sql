-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'mre_role_post_rules');
DELETE FROM wp_options WHERE option_name LIKE '%role_capabilities_processed';
DELETE FROM wp_options WHERE option_name LIKE '%role_backup';
DELETE FROM wp_options WHERE option_name LIKE '%possible_unwanted_changes_found';
DELETE FROM wp_options WHERE option_name LIKE '%welcome_needed';
DELETE FROM wp_options WHERE option_name LIKE '%last_backup_time';
DELETE FROM wp_options WHERE option_name LIKE '%_role_last_edited_by';
DELETE FROM wp_options WHERE option_name LIKE '%_role_created_by';
DELETE FROM wp_options WHERE option_name LIKE '%settings';
DELETE FROM wp_options WHERE option_name LIKE '%custom_role_descriptions';
DELETE FROM wp_options WHERE option_name LIKE '%redirect_after_activation';
DELETE FROM wp_options WHERE option_name LIKE '%active_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mre_per_post_rules', 'mre_user_post_rules');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mre_per_post_rules', 'mre_user_post_rules');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mre_per_post_rules', 'mre_user_post_rules');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mre_per_post_rules', 'mre_user_post_rules');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%mu_caps_processed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%mu_caps_processed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%mu_caps_processed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mu_caps_processed';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%cap_role_add_edit_display_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%cap_role_add_edit_display_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%cap_role_add_edit_display_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%cap_role_add_edit_display_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%display_misc';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%display_misc';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%display_misc';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%display_misc';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%display_deprecated_caps';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%display_deprecated_caps';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%display_deprecated_caps';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%display_deprecated_caps';


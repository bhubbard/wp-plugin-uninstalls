-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordpress_api_key', 'theme_mods_zerif-lite', 'wpforms_version_upgraded_from', 'pirate_forms_settings_array', 'disallowed_keys', 'pirate_forms_subscribe', 'themeisle_sdk_notifications', 'otter_reference_key', 'optimole_reference_key', 'rop_reference_key', 'neve_reference_key', 'hyve_reference_key', 'wp_full_pay_reference_key', 'feedzy_reference_key', 'themeisle_sdk_promotions_otter', 'pirate_forms_gdpr_notice0', 'themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'tsk_attachment_count', 'tsk_posts_count', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'pirate_forms_gdpr_notice%';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pirate_forms_farewell_dismissed', 'Contact email');
DELETE FROM wp_usermeta WHERE meta_key IN ('pirate_forms_farewell_dismissed', 'Contact email');
DELETE FROM wp_termmeta WHERE meta_key IN ('pirate_forms_farewell_dismissed', 'Contact email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pirate_forms_farewell_dismissed', 'Contact email');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%mail-status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%mail-status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%mail-status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mail-status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%mail-status-reason';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%mail-status-reason';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%mail-status-reason';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mail-status-reason';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%attachments';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%attachments';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%attachments';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%attachments';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%confirm-mail-status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%confirm-mail-status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%confirm-mail-status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%confirm-mail-status';


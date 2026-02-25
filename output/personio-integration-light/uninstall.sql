-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etfw_transients', 'personioIntegrationUrl', 'personioIntegration_debug', 'personioIntegrationPageBuilder', 'personioIntegrationMaxAgeLogEntries', 'personioIntegrationShowHelp', 'esfw_steps', 'personioIntegrationLoginUrl', 'personioIntegrationClientId', 'personioIntegrationApiSecret', 'personioIntegrationEnableApiAccessToken', 'personioIntegrationUrlTimeout', 'personioIntegrationEnableAvailabilityCheck', 'personio_integration_availability_check_running', 'personio-integration-availability-info-nonce', 'personio_integration_update_slugs', 'personioIntegrationPositionCount', 'personioIntegrationEnablePositionSchedule', 'personioIntegrationQueryDebug', 'personioIntegrationTemplateContentDefaults', 'personioIntegrationTemplateDetailsExcerptsTemplate', 'personioIntegrationTemplateJobDescription', 'personioIntegrationTemplateExcerptDetail', 'personioIntegrationExtendSearch', 'personioIntegrationTemplateBackToListUrl', 'personioIntegrationEnableFilter', 'personioIntegrationTemplateFilter', 'personioIntegrationFilterType', 'personioIntegrationTemplateContentList', 'personioIntegrationTemplateContentListingTemplate', 'personioIntegrationTemplateListingExcerptsTemplate', 'personioIntegrationTemplateListingContentTemplate', 'personioIntegrationTemplateExcerptDefaults', 'personioIntegrationEnableLinkInList', 'personioIntegrationHideFilterTitle', 'personioIntegrationHideFilterReset', 'personioIntegrationTemplateExcerptSeparator', 'personioIntegrationLightInstallDate', 'personio_integration_email_interval_report', 'pgfw_advanced_save_settings', 'personio_integration_intro', 'personioIntegrationLicenseKey', 'personioIntegrationEnableCronCheckInFrontend', 'personio_integration_schedules', 'esfw_step_label', 'esfw_step', 'esfw_max_steps', 'personioIntegrationVersion', 'esfw_completed', 'wp_easy_setup_completed');
DELETE FROM wp_options WHERE option_name IN ('wp_easy_setup_max_steps', 'wp_easy_setup_step', 'wp_easy_setup_step_label', 'wp_easy_setup_running', 'personioIntegrationPersonioAccountsStatus', 'widget_personiopositionwidget', 'widget_personiopositionswidget', 'personioIntegrationDeleteOnUninstall', 'esfw_running', 'personio_integration_api_token', 'personio_integration_light_plugin_update_notices');
DELETE FROM wp_options WHERE option_name LIKE 'pb_templates_import_%';
DELETE FROM wp_options WHERE option_name LIKE '%_children';
DELETE FROM wp_options WHERE option_name LIKE 'personio_integration_email_recipients_%';
DELETE FROM wp_options WHERE option_name LIKE 'personio_integration_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'personio_integration_email_from_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('availability', 'position_xml', 'personio-integration-acknowledge-costs-loading');
DELETE FROM wp_usermeta WHERE meta_key IN ('availability', 'position_xml', 'personio-integration-acknowledge-costs-loading');
DELETE FROM wp_termmeta WHERE meta_key IN ('availability', 'position_xml', 'personio-integration-acknowledge-costs-loading');
DELETE FROM wp_commentmeta WHERE meta_key IN ('availability', 'position_xml', 'personio-integration-acknowledge-costs-loading');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_split';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_split';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_split';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_split';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_image';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_image';


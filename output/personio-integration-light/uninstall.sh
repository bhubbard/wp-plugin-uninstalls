#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etfw_transients'
wp option delete 'personioIntegrationUrl'
wp option delete 'personioIntegration_debug'
wp option delete 'personioIntegrationPageBuilder'
wp option delete 'personioIntegrationMaxAgeLogEntries'
wp option delete 'personioIntegrationShowHelp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pb_templates_import_%'"
wp option delete 'esfw_steps'
wp option delete 'personioIntegrationLoginUrl'
wp option delete 'personioIntegrationClientId'
wp option delete 'personioIntegrationApiSecret'
wp option delete 'personioIntegrationEnableApiAccessToken'
wp option delete 'personioIntegrationUrlTimeout'
wp option delete 'personioIntegrationEnableAvailabilityCheck'
wp option delete 'personio_integration_availability_check_running'
wp option delete 'personio-integration-availability-info-nonce'
wp option delete 'personio_integration_update_slugs'
wp option delete 'personioIntegrationPositionCount'
wp option delete 'personioIntegrationEnablePositionSchedule'
wp option delete 'personioIntegrationQueryDebug'
wp option delete 'personioIntegrationTemplateContentDefaults'
wp option delete 'personioIntegrationTemplateDetailsExcerptsTemplate'
wp option delete 'personioIntegrationTemplateJobDescription'
wp option delete 'personioIntegrationTemplateExcerptDetail'
wp option delete 'personioIntegrationExtendSearch'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"
wp option delete 'personioIntegrationTemplateBackToListUrl'
wp option delete 'personioIntegrationEnableFilter'
wp option delete 'personioIntegrationTemplateFilter'
wp option delete 'personioIntegrationFilterType'
wp option delete 'personioIntegrationTemplateContentList'
wp option delete 'personioIntegrationTemplateContentListingTemplate'
wp option delete 'personioIntegrationTemplateListingExcerptsTemplate'
wp option delete 'personioIntegrationTemplateListingContentTemplate'
wp option delete 'personioIntegrationTemplateExcerptDefaults'
wp option delete 'personioIntegrationEnableLinkInList'
wp option delete 'personioIntegrationHideFilterTitle'
wp option delete 'personioIntegrationHideFilterReset'
wp option delete 'personioIntegrationTemplateExcerptSeparator'
wp option delete 'personioIntegrationLightInstallDate'
wp option delete 'personio_integration_email_interval_report'
wp option delete 'pgfw_advanced_save_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'personio_integration_email_recipients_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'personio_integration_email_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'personio_integration_email_from_%'"
wp option delete 'personio_integration_intro'
wp option delete 'personioIntegrationLicenseKey'
wp option delete 'personioIntegrationEnableCronCheckInFrontend'
wp option delete 'personio_integration_schedules'
wp option delete 'esfw_step_label'
wp option delete 'esfw_step'
wp option delete 'esfw_max_steps'
wp option delete 'personioIntegrationVersion'
wp option delete 'esfw_completed'
wp option delete 'wp_easy_setup_completed'
wp option delete 'wp_easy_setup_max_steps'
wp option delete 'wp_easy_setup_step'
wp option delete 'wp_easy_setup_step_label'
wp option delete 'wp_easy_setup_running'
wp option delete 'personioIntegrationPersonioAccountsStatus'
wp option delete 'widget_personiopositionwidget'
wp option delete 'widget_personiopositionswidget'
wp option delete 'personioIntegrationDeleteOnUninstall'
wp option delete 'esfw_running'

# Delete Transients
wp transient delete 'personio_integration_api_token'
wp transient delete 'personio_integration_light_plugin_update_notices'

# Clear Cron Jobs
wp cron event delete 'personio_integration_schudule_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'availability'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'availability'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'availability'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'availability'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position_xml'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position_xml'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position_xml'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position_xml'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_split'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_split'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_split'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_split'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'personio-integration-acknowledge-costs-loading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'personio-integration-acknowledge-costs-loading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'personio-integration-acknowledge-costs-loading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'personio-integration-acknowledge-costs-loading'"

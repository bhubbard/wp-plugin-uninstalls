<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('etfw_transients');
delete_site_option('etfw_transients');
delete_option('personioIntegrationUrl');
delete_site_option('personioIntegrationUrl');
delete_option('personioIntegration_debug');
delete_site_option('personioIntegration_debug');
delete_option('personioIntegrationPageBuilder');
delete_site_option('personioIntegrationPageBuilder');
delete_option('personioIntegrationMaxAgeLogEntries');
delete_site_option('personioIntegrationMaxAgeLogEntries');
delete_option('personioIntegrationShowHelp');
delete_site_option('personioIntegrationShowHelp');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pb_templates_import_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('esfw_steps');
delete_site_option('esfw_steps');
delete_option('personioIntegrationLoginUrl');
delete_site_option('personioIntegrationLoginUrl');
delete_option('personioIntegrationClientId');
delete_site_option('personioIntegrationClientId');
delete_option('personioIntegrationApiSecret');
delete_site_option('personioIntegrationApiSecret');
delete_option('personioIntegrationEnableApiAccessToken');
delete_site_option('personioIntegrationEnableApiAccessToken');
delete_option('personioIntegrationUrlTimeout');
delete_site_option('personioIntegrationUrlTimeout');
delete_option('personioIntegrationEnableAvailabilityCheck');
delete_site_option('personioIntegrationEnableAvailabilityCheck');
delete_option('personio_integration_availability_check_running');
delete_site_option('personio_integration_availability_check_running');
delete_option('personio-integration-availability-info-nonce');
delete_site_option('personio-integration-availability-info-nonce');
delete_option('personio_integration_update_slugs');
delete_site_option('personio_integration_update_slugs');
delete_option('personioIntegrationPositionCount');
delete_site_option('personioIntegrationPositionCount');
delete_option('personioIntegrationEnablePositionSchedule');
delete_site_option('personioIntegrationEnablePositionSchedule');
delete_option('personioIntegrationQueryDebug');
delete_site_option('personioIntegrationQueryDebug');
delete_option('personioIntegrationTemplateContentDefaults');
delete_site_option('personioIntegrationTemplateContentDefaults');
delete_option('personioIntegrationTemplateDetailsExcerptsTemplate');
delete_site_option('personioIntegrationTemplateDetailsExcerptsTemplate');
delete_option('personioIntegrationTemplateJobDescription');
delete_site_option('personioIntegrationTemplateJobDescription');
delete_option('personioIntegrationTemplateExcerptDetail');
delete_site_option('personioIntegrationTemplateExcerptDetail');
delete_option('personioIntegrationExtendSearch');
delete_site_option('personioIntegrationExtendSearch');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_children' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('personioIntegrationTemplateBackToListUrl');
delete_site_option('personioIntegrationTemplateBackToListUrl');
delete_option('personioIntegrationEnableFilter');
delete_site_option('personioIntegrationEnableFilter');
delete_option('personioIntegrationTemplateFilter');
delete_site_option('personioIntegrationTemplateFilter');
delete_option('personioIntegrationFilterType');
delete_site_option('personioIntegrationFilterType');
delete_option('personioIntegrationTemplateContentList');
delete_site_option('personioIntegrationTemplateContentList');
delete_option('personioIntegrationTemplateContentListingTemplate');
delete_site_option('personioIntegrationTemplateContentListingTemplate');
delete_option('personioIntegrationTemplateListingExcerptsTemplate');
delete_site_option('personioIntegrationTemplateListingExcerptsTemplate');
delete_option('personioIntegrationTemplateListingContentTemplate');
delete_site_option('personioIntegrationTemplateListingContentTemplate');
delete_option('personioIntegrationTemplateExcerptDefaults');
delete_site_option('personioIntegrationTemplateExcerptDefaults');
delete_option('personioIntegrationEnableLinkInList');
delete_site_option('personioIntegrationEnableLinkInList');
delete_option('personioIntegrationHideFilterTitle');
delete_site_option('personioIntegrationHideFilterTitle');
delete_option('personioIntegrationHideFilterReset');
delete_site_option('personioIntegrationHideFilterReset');
delete_option('personioIntegrationTemplateExcerptSeparator');
delete_site_option('personioIntegrationTemplateExcerptSeparator');
delete_option('personioIntegrationLightInstallDate');
delete_site_option('personioIntegrationLightInstallDate');
delete_option('personio_integration_email_interval_report');
delete_site_option('personio_integration_email_interval_report');
delete_option('pgfw_advanced_save_settings');
delete_site_option('pgfw_advanced_save_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'personio_integration_email_recipients_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'personio_integration_email_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'personio_integration_email_from_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('personio_integration_intro');
delete_site_option('personio_integration_intro');
delete_option('personioIntegrationLicenseKey');
delete_site_option('personioIntegrationLicenseKey');
delete_option('personioIntegrationEnableCronCheckInFrontend');
delete_site_option('personioIntegrationEnableCronCheckInFrontend');
delete_option('personio_integration_schedules');
delete_site_option('personio_integration_schedules');
delete_option('esfw_step_label');
delete_site_option('esfw_step_label');
delete_option('esfw_step');
delete_site_option('esfw_step');
delete_option('esfw_max_steps');
delete_site_option('esfw_max_steps');
delete_option('personioIntegrationVersion');
delete_site_option('personioIntegrationVersion');
delete_option('esfw_completed');
delete_site_option('esfw_completed');
delete_option('wp_easy_setup_completed');
delete_site_option('wp_easy_setup_completed');
delete_option('wp_easy_setup_max_steps');
delete_site_option('wp_easy_setup_max_steps');
delete_option('wp_easy_setup_step');
delete_site_option('wp_easy_setup_step');
delete_option('wp_easy_setup_step_label');
delete_site_option('wp_easy_setup_step_label');
delete_option('wp_easy_setup_running');
delete_site_option('wp_easy_setup_running');
delete_option('personioIntegrationPersonioAccountsStatus');
delete_site_option('personioIntegrationPersonioAccountsStatus');
delete_option('widget_personiopositionwidget');
delete_site_option('widget_personiopositionwidget');
delete_option('widget_personiopositionswidget');
delete_site_option('widget_personiopositionswidget');
delete_option('personioIntegrationDeleteOnUninstall');
delete_site_option('personioIntegrationDeleteOnUninstall');
delete_option('esfw_running');
delete_site_option('esfw_running');

// Delete Transients
delete_transient('personio_integration_api_token');
delete_site_transient('personio_integration_api_token');
delete_transient('personio_integration_light_plugin_update_notices');
delete_site_transient('personio_integration_light_plugin_update_notices');

// Clear Cron Jobs
wp_clear_scheduled_hook('personio_integration_schudule_events');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'availability' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'availability' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'availability' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'availability' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'position_xml' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'position_xml' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'position_xml' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'position_xml' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_split' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_split' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_split' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_split' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'personio-integration-acknowledge-costs-loading' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'personio-integration-acknowledge-costs-loading' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'personio-integration-acknowledge-costs-loading' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'personio-integration-acknowledge-costs-loading' ) );


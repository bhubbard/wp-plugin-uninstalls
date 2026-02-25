<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zcf_crmformswpbuilder_settings');
delete_site_option('zcf_crmformswpbuilder_settings');
delete_option('zcrm_integ_domain_name');
delete_site_option('zcrm_integ_domain_name');
delete_option('crm_users');
delete_site_option('crm_users');
delete_option('zcf_crm_oldversion_shortcodes');
delete_site_option('zcf_crm_oldversion_shortcodes');
delete_option('zcf_captcha_settings');
delete_site_option('zcf_captcha_settings');
delete_option('zcf_crmfields_shortcodes');
delete_site_option('zcf_crmfields_shortcodes');
delete_option('zcrm_integ_client_id');
delete_site_option('zcrm_integ_client_id');
delete_option('zcrm_integ_client_secret');
delete_site_option('zcrm_integ_client_secret');
delete_option('zcrm_integ_authorization_uri');
delete_site_option('zcrm_integ_authorization_uri');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'Thirdparty_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('zcf_user_capture_settings');
delete_site_option('zcf_user_capture_settings');
delete_option('zcf_usersync_assignedto_settings');
delete_site_option('zcf_usersync_assignedto_settings');
delete_option('ZCFFormBuilderPluginActivated');
delete_site_option('ZCFFormBuilderPluginActivated');
delete_option('custom_plugin');
delete_site_option('custom_plugin');
delete_option('zohocrmbasemodule');
delete_site_option('zohocrmbasemodule');
delete_option('Sync_value_on_off');
delete_site_option('Sync_value_on_off');
delete_option('usersync_rr_value');
delete_site_option('usersync_rr_value');
delete_option('zcf_contactform7plugin_settings');
delete_site_option('zcf_contactform7plugin_settings');
delete_option('ZcfLeadContactformPLugin');
delete_site_option('ZcfLeadContactformPLugin');
delete_option('crmforms_crmformswpbuilder_fields_shortcodes');
delete_site_option('crmforms_crmformswpbuilder_fields_shortcodes');
delete_option('ZcfFromBuilderFirstTimeWarning');
delete_site_option('ZcfFromBuilderFirstTimeWarning');
delete_option('zcf_lead_post_field_settings');
delete_site_option('zcf_lead_post_field_settings');
delete_option('zcf_lead_widget_field_settings');
delete_site_option('zcf_lead_widget_field_settings');
delete_option('zcf_lead_fields-tmp');
delete_site_option('zcf_lead_fields-tmp');
delete_option('zcf_contact_fields-tmp');
delete_site_option('zcf_contact_fields-tmp');
delete_option('zcf-zohocrm-form-builder');
delete_site_option('zcf-zohocrm-form-builder');


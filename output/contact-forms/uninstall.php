<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('accua_form_api_keys');
delete_site_option('accua_form_api_keys');
delete_option('accua_forms_avail_fields');
delete_site_option('accua_forms_avail_fields');
delete_option('accua_forms_saved_forms');
delete_site_option('accua_forms_saved_forms');
delete_option('accua_forms_trash_forms');
delete_site_option('accua_forms_trash_forms');
delete_option('accua_forms_default_form_data');
delete_site_option('accua_forms_default_form_data');
delete_option('accua_forms_default_file_field_data');
delete_site_option('accua_forms_default_file_field_data');
delete_option('accua_forms_lastid');
delete_site_option('accua_forms_lastid');
delete_option('accua_forms_default_captcha_field_data');
delete_site_option('accua_forms_default_captcha_field_data');
delete_option('accua_forms_default_analytics_data');
delete_site_option('accua_forms_default_analytics_data');
delete_option('accua_forms_anonymize_ip_data');
delete_site_option('accua_forms_anonymize_ip_data');
delete_option('accua_forms_db_version');
delete_site_option('accua_forms_db_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_accuaformsub_%', '_site_transient_accuaformsub_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onelogin_saml_customize_action_prevent_reset_password');
delete_site_option('onelogin_saml_customize_action_prevent_reset_password');
delete_option('onelogin_saml_slo');
delete_site_option('onelogin_saml_slo');
delete_option('onelogin_saml_forcelogin');
delete_site_option('onelogin_saml_forcelogin');
delete_option('onelogin_saml_customize_action_prevent_local_login');
delete_site_option('onelogin_saml_customize_action_prevent_local_login');
delete_option('onelogin_saml_keep_local_login');
delete_site_option('onelogin_saml_keep_local_login');
delete_option('onelogin_saml_enabled');
delete_site_option('onelogin_saml_enabled');
delete_option('onelogin_saml_idp_entityid');
delete_site_option('onelogin_saml_idp_entityid');
delete_option('onelogin_saml_idp_sso');
delete_site_option('onelogin_saml_idp_sso');
delete_option('onelogin_saml_idp_slo');
delete_site_option('onelogin_saml_idp_slo');
delete_option('onelogin_saml_idp_x509cert');
delete_site_option('onelogin_saml_idp_x509cert');
delete_option('onelogin_saml_advanced_idp_lowercase_url_encoding');
delete_site_option('onelogin_saml_advanced_idp_lowercase_url_encoding');
delete_option('onelogin_saml_autocreate');
delete_site_option('onelogin_saml_autocreate');
delete_option('onelogin_saml_updateuser');
delete_site_option('onelogin_saml_updateuser');
delete_option('onelogin_saml_account_matcher');
delete_site_option('onelogin_saml_account_matcher');
delete_option('onelogin_saml_trigger_login_hook');
delete_site_option('onelogin_saml_trigger_login_hook');
delete_option('onelogin_saml_multirole');
delete_site_option('onelogin_saml_multirole');
delete_option('onelogin_saml_alternative_acs');
delete_site_option('onelogin_saml_alternative_acs');
delete_option('onelogin_saml_trusted_url_domains');
delete_site_option('onelogin_saml_trusted_url_domains');
delete_option('onelogin_saml_attr_mapping_username');
delete_site_option('onelogin_saml_attr_mapping_username');
delete_option('onelogin_saml_attr_mapping_mail');
delete_site_option('onelogin_saml_attr_mapping_mail');
delete_option('onelogin_saml_attr_mapping_firstname');
delete_site_option('onelogin_saml_attr_mapping_firstname');
delete_option('onelogin_saml_attr_mapping_lastname');
delete_site_option('onelogin_saml_attr_mapping_lastname');
delete_option('onelogin_saml_attr_mapping_nickname');
delete_site_option('onelogin_saml_attr_mapping_nickname');
delete_option('onelogin_saml_attr_mapping_rememberme');
delete_site_option('onelogin_saml_attr_mapping_rememberme');
delete_option('onelogin_saml_attr_mapping_role');
delete_site_option('onelogin_saml_attr_mapping_role');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'onelogin_saml_role_mapping_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'onelogin_saml_role_order_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('onelogin_saml_role_mapping_multivalued_in_one_attribute_value');
delete_site_option('onelogin_saml_role_mapping_multivalued_in_one_attribute_value');
delete_option('onelogin_saml_role_mapping_multivalued_pattern');
delete_site_option('onelogin_saml_role_mapping_multivalued_pattern');
delete_option('onelogin_saml_customize_action_prevent_change_password');
delete_site_option('onelogin_saml_customize_action_prevent_change_password');
delete_option('onelogin_saml_customize_action_prevent_change_mail');
delete_site_option('onelogin_saml_customize_action_prevent_change_mail');
delete_option('onelogin_saml_customize_stay_in_wordpress_after_slo');
delete_site_option('onelogin_saml_customize_stay_in_wordpress_after_slo');
delete_option('onelogin_saml_customize_links_user_registration');
delete_site_option('onelogin_saml_customize_links_user_registration');
delete_option('onelogin_saml_customize_links_lost_password');
delete_site_option('onelogin_saml_customize_links_lost_password');
delete_option('onelogin_saml_customize_links_saml_login');
delete_site_option('onelogin_saml_customize_links_saml_login');
delete_option('onelogin_saml_advanced_settings_debug');
delete_site_option('onelogin_saml_advanced_settings_debug');
delete_option('onelogin_saml_advanced_settings_strict_mode');
delete_site_option('onelogin_saml_advanced_settings_strict_mode');
delete_option('onelogin_saml_advanced_settings_sp_entity_id');
delete_site_option('onelogin_saml_advanced_settings_sp_entity_id');
delete_option('onelogin_saml_advanced_settings_nameid_encrypted');
delete_site_option('onelogin_saml_advanced_settings_nameid_encrypted');
delete_option('onelogin_saml_advanced_settings_authn_request_signed');
delete_site_option('onelogin_saml_advanced_settings_authn_request_signed');
delete_option('onelogin_saml_advanced_settings_logout_request_signed');
delete_site_option('onelogin_saml_advanced_settings_logout_request_signed');
delete_option('onelogin_saml_advanced_settings_logout_response_signed');
delete_site_option('onelogin_saml_advanced_settings_logout_response_signed');
delete_option('onelogin_saml_advanced_settings_want_message_signed');
delete_site_option('onelogin_saml_advanced_settings_want_message_signed');
delete_option('onelogin_saml_advanced_settings_want_assertion_signed');
delete_site_option('onelogin_saml_advanced_settings_want_assertion_signed');
delete_option('onelogin_saml_advanced_settings_want_assertion_encrypted');
delete_site_option('onelogin_saml_advanced_settings_want_assertion_encrypted');
delete_option('onelogin_saml_advanced_settings_sp_x509cert');
delete_site_option('onelogin_saml_advanced_settings_sp_x509cert');
delete_option('onelogin_saml_advanced_settings_sp_privatekey');
delete_site_option('onelogin_saml_advanced_settings_sp_privatekey');
delete_option('onelogin_saml_advanced_settings_retrieve_parameters_from_server');
delete_site_option('onelogin_saml_advanced_settings_retrieve_parameters_from_server');
delete_option('onelogin_saml_advanced_nameidformat');
delete_site_option('onelogin_saml_advanced_nameidformat');
delete_option('onelogin_saml_advanced_requestedauthncontext');
delete_site_option('onelogin_saml_advanced_requestedauthncontext');
delete_option('onelogin_saml_advanced_signaturealgorithm');
delete_site_option('onelogin_saml_advanced_signaturealgorithm');
delete_option('onelogin_saml_advanced_digestalgorithm');
delete_site_option('onelogin_saml_advanced_digestalgorithm');
delete_option('onelogin_network_saml_global_jit');
delete_site_option('onelogin_network_saml_global_jit');
delete_option('whl_page');
delete_site_option('whl_page');
delete_option('
            onelogin_saml_advanced_idp_lowercase_url_encoding');
delete_site_option('
            onelogin_saml_advanced_idp_lowercase_url_encoding');


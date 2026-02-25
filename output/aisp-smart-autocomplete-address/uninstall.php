<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aisp_autocomplete_here_api_key');
delete_site_option('aisp_autocomplete_here_api_key');
delete_option('aisp_autocomplete_here_limit');
delete_site_option('aisp_autocomplete_here_limit');
delete_option('aisp_fluent_forms_enable');
delete_site_option('aisp_fluent_forms_enable');
delete_option('aisp_fluent_forms_container_class');
delete_site_option('aisp_fluent_forms_container_class');
delete_option('aisp_sureforms_enable');
delete_site_option('aisp_sureforms_enable');
delete_option('aisp_sureforms_container_class');
delete_site_option('aisp_sureforms_container_class');
delete_option('aisp_cf7_enable');
delete_site_option('aisp_cf7_enable');
delete_option('aisp_cf7_container_class');
delete_site_option('aisp_cf7_container_class');
delete_option('aisp_wpforms_enable');
delete_site_option('aisp_wpforms_enable');
delete_option('aisp_wpforms_container_class');
delete_site_option('aisp_wpforms_container_class');
delete_option('aisp_custom_field_enable');
delete_site_option('aisp_custom_field_enable');
delete_option('aisp_custom_field_container_class');
delete_site_option('aisp_custom_field_container_class');
delete_option('aisp_wc_enable_checkout');
delete_site_option('aisp_wc_enable_checkout');
delete_option('aisp_wc_enable_edit_address');
delete_site_option('aisp_wc_enable_edit_address');
delete_option('aisp_wc_enable_admin_profile');
delete_site_option('aisp_wc_enable_admin_profile');


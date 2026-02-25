<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('leadtrackr_gf_forms');
delete_site_option('leadtrackr_gf_forms');
delete_option('leadtrackr_cf7_forms');
delete_site_option('leadtrackr_cf7_forms');
delete_option('leadtrackr_elementor_forms');
delete_site_option('leadtrackr_elementor_forms');
delete_option('leadtrackr_wpforms_forms');
delete_site_option('leadtrackr_wpforms_forms');
delete_option('leadtrackr_fluent_forms_forms');
delete_site_option('leadtrackr_fluent_forms_forms');
delete_option('leadtrackr_divi_process_contact_form');
delete_site_option('leadtrackr_divi_process_contact_form');
delete_option('leadtrackr_project_id');
delete_site_option('leadtrackr_project_id');


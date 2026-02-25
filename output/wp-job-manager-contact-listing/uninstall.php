<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('job_manager_form_contact');
delete_site_option('job_manager_form_contact');
delete_option('resume_manager_form_contact');
delete_site_option('resume_manager_form_contact');
delete_option('resume_manager_force_application');
delete_site_option('resume_manager_force_application');
delete_option('ninja_forms_version');
delete_site_option('ninja_forms_version');
delete_option('ninja_forms_load_deprecated');
delete_site_option('ninja_forms_load_deprecated');


<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agilecrm_cf7_domain');
delete_site_option('agilecrm_cf7_domain');
delete_option('agilecrm_cf7_admin_email');
delete_site_option('agilecrm_cf7_admin_email');
delete_option('agilecrm_cf7_api_key');
delete_site_option('agilecrm_cf7_api_key');
delete_option('agilecrm_cf7_form_map');
delete_site_option('agilecrm_cf7_form_map');
delete_option('agilecrm_cf7_contact_fields');
delete_site_option('agilecrm_cf7_contact_fields');
delete_option('agilecrm_cf7_mapped_forms');
delete_site_option('agilecrm_cf7_mapped_forms');


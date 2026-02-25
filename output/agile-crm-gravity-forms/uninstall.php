<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agilecrm_gf_domain');
delete_site_option('agilecrm_gf_domain');
delete_option('agilecrm_gf_admin_email');
delete_site_option('agilecrm_gf_admin_email');
delete_option('agilecrm_gf_api_key');
delete_site_option('agilecrm_gf_api_key');
delete_option('agilecrm_gf_form_map');
delete_site_option('agilecrm_gf_form_map');
delete_option('agilecrm_gf_contact_fields');
delete_site_option('agilecrm_gf_contact_fields');
delete_option('agilecrm_gf_mapped_forms');
delete_site_option('agilecrm_gf_mapped_forms');


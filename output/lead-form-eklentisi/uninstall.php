<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lead_form_fields');
delete_site_option('lead_form_fields');
delete_option('lead_communication_mode');
delete_site_option('lead_communication_mode');
delete_option('lead_admin_communication_choice');
delete_site_option('lead_admin_communication_choice');
delete_option('lead_form_token');
delete_site_option('lead_form_token');
delete_option('lead_form_styles');
delete_site_option('lead_form_styles');
delete_option('lead_form_title');
delete_site_option('lead_form_title');

